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
        if filterd_channel(message)
          message.add_reaction('yaminoma')
        end
      end

      on(
        /.*(おは|ohayo|morning).*/i,
        name: 'ohayo',
        description: 'sun_with_faceリアクションをつける',
        all: true
      )

      def ohayo(message)
        if filterd_channel(message)
          message.add_reaction('sun_with_face')
        end
      end

      on(
        /.*(ひる|昼|ご(はん|飯)|ランチ|lunch).*/i,
        name: 'ohiru',
        description: 'rice_ballリアクションをつける',
        all: true
      )

      def ohiru(message)
        if filterd_channel(message)
          message.add_reaction('rice_ball')
        end
      end

      on(
        /.*((もど|戻)り|再開|back).*/i,
        name: 'modori',
        description: 'backリアクションをつける',
        all: true
      )

      def modori(message)
        if filterd_channel(message)
          message.add_reaction('back')
        end
      end

      on(
        /.*(コンビニ|こんびに).*/,
        name: 'convenience',
        description: 'famimaリアクションをつける',
        all: true
      )

      def convenience(message)
        if filterd_channel(message)
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
        "https://slack.com/api/channels.list?token=#{ENV['RUBOTY_YAMINOMA_SLACK_TOKEN']}"
      end
    end
  end
end
