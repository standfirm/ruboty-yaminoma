# frozen_string_literal: true

# frozen_string_litral: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on /あがります/, name: 'yaminoma', description: 'やみのまリアクションをつける'

      def yaminoma(message)
        message.reply('+:yaminoma:')
      end
    end
  end
end
