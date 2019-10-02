require 'pry' #=> requiring the pry gem will allow us to
                # call binding.pry inside of our code

class BankAccount

    # We can use a constant or a class variable to keep
    # track of all of the BankAccount instances in the 
    # BankAccount class

    ACCOUNTS = [] #=> constant
    # @@accounts = [] #=> class variable
    

    # attr_accessor :balance #=> creates an attribute reader and writer for balance
    # attr_reader :balance #=> creates an attribute reader for balance
    # attr_writer :balance #=> creates an attribute writer for balance

    # attributes: id, balance
    def initialize(id, balance) #=> class constructor
        # binding.pry
        # use pry to look at the value of self inside the initialize method
        ACCOUNTS << self
        # Here, the value of self is the current BankAccount instance that is being created
        @id = id
        @balance = balance
    end

    # attr_reader :balance
    # will generate the following method
    def balance #=> attribute reader
        @balance
    end

    # attr_writer :balance 
    # will generate the following method
    def balance=(balance) #=> attribute writer
        @balance = balance
    end

end
