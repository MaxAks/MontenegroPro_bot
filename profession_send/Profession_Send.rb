class Profession_Send
  def profession_send
    Telegram::Bot::Client.run(TOKEN) do |bot|
    # ОТПРАВКА КНОПОК НАЧАЛО
        bot.listen do |message|
        require './profession_base/photographer/Profession_photographer'
        pp1 = Profession_Photographer.new #Создаем объект класса Profession_Photographer
        bot.api.send_message(
                chat_id: message.from.id, 
                text: "#{pp1.photographer_podgorica}") #Вызываем метод написания профессии и пишем его сразу в команде к API телеграма.
          break
        end  
      #ОТПРАВКА КНОПОК КОНЕЦ
      end
  end
end