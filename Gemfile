# frozen_string_literal: true

source "https://rubygems.org"

gem 'json'
gem 'net-http-persistent'
# Пока не дошел до записи в базу ID это не использую 
gem 'pg' #gem базы данных новый

=begin
если ВЫСКАКИВАЕТ ОШИБКА
"An error occurred while installing pg (1.4.1), and Bundler cannot continue."
ТО НУЖНО ИСПОЛЬЗОВАТЬ СЛЕДУЮЩЕЕ
brew install libpq
gem install pg -- --with-pg-config=/usr/local/opt/libpq/bin/pg_config
=end

# gem 'sqlite3' #gem для БД - ИЗНАЧАЛЬНО ставилось это
gem "telegram-bot-ruby" #гем является основным для соединения с Telegram ботом