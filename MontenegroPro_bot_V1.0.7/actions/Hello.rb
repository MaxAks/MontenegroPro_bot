#СТАРТ 1 - здесь запускаем телеграм бота по кнопке СТАРТ - отправляет приветственное сообщение пользователю, инструкцию и список городов для выбора городов
class Hello
def hello_first
  Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(
        chat_id: message.chat.id, 
        text: "Здравствуй, #{message.from.first_name}")
=begin сейчас идет отправка Id в телегу создателя, заменить на запись в базу данных
      bot.api.send_message(
        chat_id: #'ENTER YOU ID HERE', 
        text: "Новый пользователь, #{message.from.id}") #Отправляет создателю id нового пользователя
=end
      break
    end
  end
end
end
end
#ФИНИШ 1 - здесь запускали телеграм бота по кнопке СТАРТ