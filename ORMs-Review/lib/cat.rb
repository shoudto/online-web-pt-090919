# class method that creates a cats table if it doesn't exist
# class method that finds a cat by its id and returns an instance of a cat with that id
# class method that selects all cats from db and returns cat instances
# instance method that saves a cat to the db if it is not already saved

class Cat
    attr_accessor :id, :name, :age

    def initialize(id = nil, name, age)
        @id = id
        @name = name
        @age = age
    end

    def self.all
        sql = <<-SQL
        SELECT * FROM cats;
        SQL
        self.create_from_db(DB[:conn].execute(sql))
    end

    def self.create_from_db(rows)
        rows.map do |row|
            Cat.new(*row)
        end
    end

    def self.create_table
        sql = <<-SQL
        CREATE TABLE IF NOT EXISTS cats (
            id INTEGER PRIMARY KEY,
            name TEXT,
            age INTEGER
        );
        SQL
        DB[:conn].execute(sql)
    end

    def self.find_by_id(id)
        sql = <<-SQL
        SELECT * FROM cats
        WHERE id = ?
        SQL
        cat_array = DB[:conn].execute(sql, id).flatten
        self.new(*cat_array)
    end

    def self.find_by(attr_name, attr_value)
        # more abstract version of find_by_id
    end

    def save
        if !id
            sql = <<-SQL
            INSERT INTO cats (name, age)
            VALUES (?, ?)
            SQL
            DB[:conn].execute(sql, self.name, self.age)
            @id = DB[:conn].execute('SELECT last_insert_rowid() FROM cats')[0][0]
            self
        else
            puts 'already saved'
            self
        end
    end

end