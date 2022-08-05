# coding: UTF-8

TOKEN = 'ENTER YOU TOKEN HERE'

require 'telegram/bot' # обращаемся к телеграм библиотеке
require './actions/Hello'
require './city/City_Choice'
require './profession/Profession_Choice'
require './profession_send/Profession_Send'
require './profession_base/photographer/Profession_photographer'

#СТАРТ 1 - здесь запускаем телеграм бота по кнопке СТАРТ - отправляет приветственное сообщение пользователю, инструкцию и список городов для выбора городов
Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message| #Запускаем слушание ботом ответов - текстовые команды или ответы кнопок.

    case message

      #Обработка ответа кнопки
      when Telegram::Bot::Types::CallbackQuery 
      #Если приходит  от callbacks from inline buttons выполняется эта часть
        
            #Обработка города
              if message.data == 'podgorica'
                bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Вы выбрали город 'Подгорица'")
                pc1 = Profession_Choice.new #Создаем объект класса Profession_Choice
                pc1.profession_choice #Вызываем метод написания города.
              end

            #Обработка специальсности
              if message.data == 'photographer'
                bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Мы нашли для Вас следующих специалистов")
                ps1 = Profession_Send.new #Создаем объект класса Profession_Send
                ps1.profession_send #Вызываем метод написания профессии.
              end



      #Обработка ответа текстовой команды чере /
      when Telegram::Bot::Types::Message
      #Если приходит текстовая команда от пользователя через / выполняется эта часть
        case message.text  
          when '/start'
          hf1 = Hello.new #Создаем объект класса Hello
          hfh1 = hf1.hello_first #Вызываем метод написания первого сообщения.
          cc1 = City_Choice.new #Создаем объект класса City_Choice
          cc1.city_choice #Вызываем метод отправки выбора города.
        end   
    end
  end
end 
#ФИНИШ 1 - здесь запускали телеграм бота по кнопке СТАРТ