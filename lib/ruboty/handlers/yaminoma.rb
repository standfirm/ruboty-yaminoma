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

      on /おひる/i, name: 'ohiru', description: 'rice_ballリアクションをつける', all: true

      def ohiru(message)
        message.add_reaction('rice_ball')
      end

      on /もどり/i, name: 'modori', description: 'backリアクションをつける', all: true

      def modori(message)
        message.add_reaction('back')
      end
    end
  end
end
