# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on /あがります|(かえ|帰)ります|お(つか|疲)れさまです/i, name: 'yaminoma', description: 'やみのまリアクションをつける', all: true

      def yaminoma(message)
        message.add_reaction('yaminoma')
      end

      on /おは\w*|ohayo/i, name: 'ohayo', description: 'sun_with_faceリアクションをつける', all: true

      def ohayo(message)
        message.add_reaction('sun_with_face')
      end

      on /お(ひる|昼)|ごはん|lunch/i, name: 'ohiru', description: 'rice_ballリアクションをつける', all: true

      def ohiru(message)
        message.add_reaction('rice_ball')
      end

      on /(もど|戻)り/i, name: 'modori', description: 'backリアクションをつける', all: true

      def modori(message)
        message.add_reaction('back')
      end
    end
  end
end
