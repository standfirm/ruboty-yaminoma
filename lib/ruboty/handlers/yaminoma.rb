# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on /あがります|かえります|おつかれさまです/i, name: 'yaminoma', description: 'やみのまリアクションをつける', all: true

      def yaminoma(message)
        message.add_reaction('yaminoma')
      end
    end
  end
end
