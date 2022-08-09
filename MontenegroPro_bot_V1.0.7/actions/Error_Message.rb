#СТАРТ 1 - здесь запускаем телеграм бота по кнопке СТАРТ - отправляет приветственное сообщение пользователю, инструкцию и список городов для выбора городов
class Error_Message
  def error_message
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        if message.text != '/start' or message.text != '/change_city' or message.text != '/change_prof'
          bot.api.send_message(
          chat_id: message.chat.id, 
          text: "Уважаемый, #{message.from.first_name}, Бот воспринимает только команды \n >>> /start <<< \n\n >>> /change_city <<< \n А также нажатие кнопок выбора города или профессии, на другие действия он не реагирует, пожалуйста, введите эту команду или вернитесь к сообщениям выше и нажмите необходимую кнопку для продолжения!!!")
        end
      break
      end
    end
  end
end
#ФИНИШ 1 - здесь запускали телеграм бота по кнопке СТАРТ