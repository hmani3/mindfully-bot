require 'discordrb'

class MainBot
    def self.run
        bot = Discordrb::Bot.new(
            token: ENV['DISCORD_BOT_TOKEN'],
            client_id: ENV['CLIENT_ID']
        )

        bot.register_application_command(:ping, "Responds with PONG", server_id: ENV['GUILD_ID'].to_i)
        
        bot.application_command(:ping) do |event|
            event.respond(content: 'PONG')
        end

        bot.run
    end
end