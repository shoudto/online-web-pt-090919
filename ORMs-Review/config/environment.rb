require 'sqlite3'
require 'pry'

DB = { :conn => SQLite3::Database.new('db/cats.db') }

DB[:conn].results_as_hash = true

require_relative '../lib/cat'