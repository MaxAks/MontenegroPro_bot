# coding: UTF-8

TOKEN = #'ENTER YOU TOKEN HERE'

require 'telegram/bot' # обращаемся к телеграм библиотеке
require './actions/Answer'
require './actions/Hello'
require './actions/Error_Message'
require './actions/Time_Security'
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
        
            #ОБРАБОТКА ГОРОДА
            
            #ПОДГОРИЦА НАЧАЛО

            case message.data
            when 'podgorica'
                bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Вы выбрали город 'Подгорица'")
                pc1 = Profession_Choice.new #Создаем объект класса Profession_Choice
                pc1.profession_choice_podgorica #Вызываем метод написания города.
                  
                  #ОБРАБОТКА СПЕЦИАЛЬСНОТИ
                  #Telegram::Bot::Client.run(TOKEN) do |bot|
                      bot.listen do |message|
                        case message
                            when Telegram::Bot::Types::CallbackQuery 
                              #bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Бот выполнил этап 1")
                              if message.data == 'photographer'
                                  ps1 = Profession_Send.new #Создаем объект класса Profession_Send
                                  ps1.profession_send_podgorica_photographer #Вызываем метод написания профессии.
                                  #bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Бот выполнил этап 2")
                                next
                              else
                                next
                              end
                              break
                            when Telegram::Bot::Types::Message
                                #bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Бот выполнил этап 3")
                                #Если приходит текстовая команда от пользователя через / выполняется эта часть
                                an1 = Answer.new #Создаем объект класса Hello
                                ana1 = an1.answer #Вызываем метод написания первого сообщения.

                                #bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Бот выполнил этап 4")
                            break
                          else
                            break
                        end
                        #bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Бот Выполнил этап 5") 
                      end
                  #end  

                  #КОНЕЦ ОБРАБОТКИ СПЕЦИАЛЬНОСТИ 
                  #bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Бот выполнил этап 6")
            next



            when 'budva'
                bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Вы выбрали город 'Будва', мы работает над расширением бота, пока это тестовая страница")
            next

            when 'kotor'
                bot.api.send_message(chat_id: message.from.id, text: "#{message.from.first_name}, Вы выбрали город 'Котор', мы работает над расширением бота, пока это тестовая страница")
            else
              next  
            next
            end

            #ПОДГОРИЦА НАЧАЛО

            #КОНЕЦ ОБРАБОТКИ ГОРОДА

      #КОНЕЦ Обработки ответа кнопки
            



      #Обработка ответа текстовой команды через /start
      when Telegram::Bot::Types::Message
      #Если приходит текстовая команда от пользователя через / выполняется эта часть
                an1 = Answer.new #Создаем объект класса Hello
                ana1 = an1.answer #Вызываем метод написания первого сообщения.
                 
    end
  end
end 
#ФИНИШ 1 - здесь запускали телеграм бота по кнопке СТАРТ