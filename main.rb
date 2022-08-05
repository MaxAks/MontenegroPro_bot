# coding: UTF-8
require 'telegram/bot'

TOKEN = 'ENTER YOU TOKEN HERE'
users = []

#ОТВЕТЫ ПРОПИСАТЬ ЗДЕСЬ

#СТАРТ 1 - здесь запускали телеграм бота по кнопке СТАРТ
Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(
        chat_id: message.chat.id, 
        text: "Здравствуй, #{message.from.first_name}")
      #users.push(bot.api.message.from.first_name)
      bot.api.send_message(
        chat_id: ENTER YOU ID HERE, 
        text: "Новый пользователь, #{message.from.id}") #ранее тут было first_name
    end
  end
end
#ФИНИШ 1 - здесь запускали телеграм бота по кнопке СТАРТ