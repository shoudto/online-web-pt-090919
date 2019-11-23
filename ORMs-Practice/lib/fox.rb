class Fox

    def self.all
        DB[:conn].execute('SELECT * FROM foxes');
        
    end

end