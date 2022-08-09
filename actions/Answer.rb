#СТАРТ 1 - здесь запускаем телеграм бота по кнопке СТАРТ - отправляет приветственное сообщение пользователю, инструкцию и список городов для выбора городов
class Answer
def answer

  Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text 
              when '/start'
                hf1 = Hello.new #Создаем объект класса Hello
                hfh1 = hf1.hello_first #Вызываем метод написания первого сообщения.
                cc1 = City_Choice.new #Создаем объект класса City_Choice
                cc1.city_choice #Вызываем метод отправки выбора города.
              break

              when '/change_city'
                cc1 = City_Choice.new #Создаем объект класса City_Choice
                cc1.city_choice #Вызываем метод отправки выбора города.
              break

    else
                em1 = Error_Message.new #Создаем объект класса Hello
                eme1 = em1.error_message #Вызываем метод написания  сообщения об ошибке.
                break
    end  
  end
end
end
end
#ФИНИШ 1 - здесь запускали телеграм бота по кнопке СТАРТ