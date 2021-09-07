# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on(
        /.*((あ|上)が(り|る|って)|(かえ|帰)(り|る)|お(つか|疲)れ|(お|終)わり|bye).*/i,
        name: 'yaminoma',
        description: 'やみのまリアクションをつける',
        all: true
      )

      def yaminoma(message)
        if filterd_channel(message) && !ignored_user?(message)
          message.add_reaction('yaminoma')
        end
      end

      on(
        /.*(コンビニ|こんびに).*/,
        name: 'convenience',
        description: 'famimaリアクションをつける',
        all: true
      )

      def convenience(message)
        if filterd_channel(message) && !ignored_user?(message)
          message.add_reaction('convenience_famima')
          message.add_reaction('convenience_poplar')
          message.add_reaction('convenience_seveneleven')
          message.add_reaction('convenience_store_k')
          message.add_reaction('convenience_timely')
          message.add_reaction('convenience_seicomart')
        end
      end

      private

      def filterd_channel(message)
        room(message.from) =~ Regexp.new(ENV['YAMINOMA_CHANNEL_FILTER'])
      end

      def room(from)
        channels.find { |channel| channel['id'] == from }['name']
      end

      def channels
        @channels ||= JSON.parse(open(api_channels_list).read)['channels']
      end

      def api_channels_list
        "https://slack.com/api/conversations.list?token=#{ENV['RUBOTY_YAMINOMA_SLACK_TOKEN']}"
      end

      def ignored_user?(message)
        false if ENV['YAMINOMA_IGNORED_USER'].empty?
        message.from_name.match?(Regexp.new(ENV['YAMINOMA_IGNORED_USER']))
      end
    end
  end
end
