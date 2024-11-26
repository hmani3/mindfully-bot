require 'discordrb'

class MindfullyBot
    def self.run
        bot = Discordrb::Bot.new token: ENV['DISCORD_BOT_TOKEN'], client_id: ENV['CLIENT_ID']
        bot.message(with_text: 'PING') do |event|
            event.respond('PONG')
        end
        bot.run
    end
end