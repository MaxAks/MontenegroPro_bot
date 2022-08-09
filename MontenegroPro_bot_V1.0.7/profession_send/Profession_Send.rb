class Profession_Send

#ВСЯ СТРАНА

#КОНЕЦ ВСЕЙ СТРАНЫ

#ПОДГОРИЦА

  module Profession_Send_Podgorica
    def profession_send_podgorica_photographer
    Telegram::Bot::Client.run(TOKEN) do |bot|
        bot.listen do |message|
        pp1 = Profession_Photographer.new #Создаем объект класса Profession_Photographer
        #Отправка профессионалов из выбранного города
        bot.api.send_message(
        chat_id: message.from.id, 
        text: "#{pp1.photographer_podgorica}\n #{pp1.photographer_all}") #Вызываем метод написания профессии и пишем его сразу в команде к API телеграма.
        #Отправка профессионалов,работающих по всей стране
        #bot.api.send_message(
        #chat_id: message.from.id, 
        #text: "#{pp1.photographer_all}") #Вызываем метод написания профессии и пишем его сразу в команде к API телеграма.
        break
        end  
      end
    end
  end
include Profession_Send_Podgorica
#КОНЕЦ ПОДГОРИЦА

  #БУДВА

  #КОНЕЦ БУДВА

  #КОТОР

  #КОНЕЦ КОТОР
  
  #ПЕТРОВАЦ

  #КОНЕЦ ПЕТРОВАЦ

  #БАР

  #КОНЕЦ БАР

  #Герцег-Нови

  #КОНЕЦ Герцег-Нови

  #Ульцинь
  
  #КОНЕЦ Ульцинь 

end