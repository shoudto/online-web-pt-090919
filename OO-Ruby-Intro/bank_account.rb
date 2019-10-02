
require 'pry'
class BankAccount

    ACCOUNTS = []
    # @@accounts = []

    # attr_accessor :balance
    # attr_reader :balance
    # attr_writer :balance

    # id, balance
    def initialize(id, balance)
        # binding.pry
        ACCOUNTS << self
        @id = id
        @balance = balance
    end

    # attr_reader :balance
    def balance
        @balance
    end

    # attr_writer :balance
    # def balance=(balance)
    #     @balance = balance
    # end

end
