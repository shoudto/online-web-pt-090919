class Cli

    def start
        display_welcome_message
        load_cats
    end

    def display_welcome_message
        puts "Welcome to the siamese rescue app"
    end

    def load_cats
        siamese_scraper = Scraper.new('https://va.siameserescue.org/webbuild.php?type=adoptme&page=1&state=')
        siamese_scraper.scrape_cats
    end

end