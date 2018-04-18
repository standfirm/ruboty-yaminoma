# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on /あがります/i, name: 'yaminoma', description: 'やみのまリアクションをつける', all: true

      def yaminoma(message)
        message.reply('+:yaminoma:')
      end
    end
  end
end
