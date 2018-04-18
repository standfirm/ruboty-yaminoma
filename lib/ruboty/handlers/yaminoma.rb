# frozen_string_literal: true

# frozen_string_litral: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on /あがります|agarimasu/i, name: 'yaminoma', description: 'やみのまリアクションをつける'

      def yaminoma(message)
        message.reply('+:yaminoma:')
      end
    end
  end
end
