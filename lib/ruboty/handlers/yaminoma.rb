# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on /あがります|かえります|おつかれさまです/i, name: 'yaminoma', description: 'やみのまリアクションをつける', all: true

      def yaminoma(message)
        message.add_reaction('yaminoma')
      end

      on /おはよう/i, name: 'ohayo', description: 'sun_with_faceリアクションをつける', all: true

      def ohayo(message)
        message.add_reaction('sun_with_face')
      end
    end
  end
end
