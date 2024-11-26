require Rails.root.join("lib/mindfully_bot")

Thread.new do 
    MindfullyBot.run
end