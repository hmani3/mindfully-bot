require Rails.root.join("lib/mindfully_bot")

Thread.new do 
    MainBot.run
end