require 'sqlite3'
require 'pry'

DB = { :conn => SQLite3::Database.new('db/test.db') }

require_relative '../lib/fox'