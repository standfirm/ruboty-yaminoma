# frozen_string_literal: true

module Ruboty
  module Handlers
    class Yaminoma < Base
      on(
        /(あ|上)がります|(かえ|帰)(ります|る)|お(つか|疲)れ(さま|様)で(す|した)|(お|終)わり/i,
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

      on(
        /コンビニ|こんびに/,
        name: 'convenience',
        description: 'famimaリアクションをつける',
        all: true
      )

      def convenience(message)
        message.add_reaction('convenience_famima')
        message.add_reaction('convenience_poplar')
        message.add_reaction('convenience_seveneleven')
        message.add_reaction('convenience_store_k')
      end
    end
  end
end
