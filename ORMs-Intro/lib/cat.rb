# TO BUILD:
# instance method that saves the cat object to the database
# class method that instantiates a cat and saves the cat
# class method that takes in a db row and creates a cat instance
# class method that takes in a cat attribute, finds a cat with that attribute in the db, and returns an instance

class Cat
    attr_accessor :name, :age, :id
    
    @@all = []

    def self.all
        @@all
    end

    def initialize(id: nil, name:, age:)
        @name = name
        @age = age
        @@all << self
        # We aren't saving a newly instantiated cat to the database because
            # we want to allow ourselves room to decide if this cat instance is worth saving,
            # i.e. validating its attributes, making sure it's not a duplicate record, etc.
    end

    def save
        sql = <<-SQL
        INSERT INTO cats (name, age)
        VALUES (?, ?)
        SQL
        DB[:conn].execute(sql, self.name, self.age)
        @id = DB[:conn].execute('SELECT last_insert_rowid()')[0][0]
        # Right now this method is returning the newly created cat's id.
        # Is there a more meaningful return value we could give this method?
    end

    def self.create(name:, age:)
        new_cat = self.new(name: name, age: age)
        new_cat.save
        new_cat
    end

end