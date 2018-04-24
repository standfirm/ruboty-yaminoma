# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on(
        /(あ|上)がります|(かえ|帰)ります|お(つか|疲)れ(さま|様)です|(帰|かえ)る|(お|終)わり/i,
        name: 'yaminoma',
        description: 'やみのまリアクションをつける',
        all: true
      )

      def yaminoma(message)
        message.add_reaction('yaminoma')
      end

      on(
        /おは\w*|ohayo/i,
        name: 'ohayo',
        description: 'sun_with_faceリアクションをつける',
        all: true
      )

      def ohayo(message)
        message.add_reaction('sun_with_face')
      end

      on(
        /お(ひる|昼)|ご(はん|飯)|lunch/i,
        name: 'ohiru',
        description: 'rice_ballリアクションをつける',
        all: true
      )

      def ohiru(message)
        message.add_reaction('rice_ball')
      end

      on(
        /(もど|戻)り|再開/i,
        name: 'modori',
        description: 'backリアクションをつける',
        all: true
      )

      def modori(message)
        message.add_reaction('back')
      end
    end
  end
end
