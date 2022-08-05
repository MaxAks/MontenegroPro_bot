class Profession_Choice
  def profession_choice
    Telegram::Bot::Client.run(TOKEN) do |bot|
    # ОТПРАВКА КНОПОК НАЧАЛО
      bot.listen do |message|
        kb = 
          Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Фотограф', callback_data: 'photographer')
          markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
        bot.api.send_message(chat_id: message.from.id, text: 'Теперь выберите специальность, которая вам нужна', reply_markup: markup)
      break
      end
#ОТПРАВКА КНОПОК КОНЕЦ
    end
  end
end