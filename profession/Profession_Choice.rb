class Profession_Choice

#ПОДГОРИЦА

  def profession_choice_podgorica
    Telegram::Bot::Client.run(TOKEN) do |bot|
    # ОТПРАВКА КНОПОК НАЧАЛО
      bot.listen do |message|
        kb = [
            Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Уборка/Клининг', callback_data: 'cleaning'),
            Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Кондиционеры(продажа/установка)', callback_data: 'aircond'),
            Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Фотографы/Видеографы', callback_data: 'photographer')
              ]
          markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
        bot.api.send_message(chat_id: message.from.id, text: 'Теперь выберите специальность, которая вам нужна', reply_markup: markup)
      break
      end
    end
  end

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