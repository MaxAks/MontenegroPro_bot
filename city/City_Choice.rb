class City_Choice
  
  def city_choice
    Telegram::Bot::Client.run(TOKEN) do |bot|
      # ОТПРАВКА КНОПОК НАЧАЛО
        bot.listen do |message|
          case message
          when Telegram::Bot::Types::Message
            kb = [ 
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Подгорица', callback_data: 'podgorica'),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Будва', callback_data: 'budva'),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Котор', callback_data: 'kotor'),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Петровац', callback_data: 'petrovac'),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Бар', callback_data: 'bar'),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Герцег-Нови', callback_data: 'herceg_novi'),
              Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Ульцинь', callback_data: 'ulcin')
            ]
            markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
            bot.api.send_message(chat_id: message.chat.id, text: 'Выберите город', reply_markup: markup)
          break  
        end
      end
      #ОТПРАВКА КНОПОК КОНЕЦ
    end
  end

end