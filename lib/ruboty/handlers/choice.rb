module Ruboty
  module Handlers
    class Choice < Base
      on /choice\s+(.*)/i, name: 'choice', description: 'Return one item at random'

      def choice(message)
        message.reply(message[1].split(/[　・、,\s]+/).sample)
      end
    end
  end
end
