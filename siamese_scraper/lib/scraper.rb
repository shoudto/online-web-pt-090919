class Scraper
    attr_reader :url

    @@all = []

    def initialize(url)
        @url = url
    end

    def scrape_cats
        html = Nokogiri::HTML(open(url))
        html.css("span.ft0c2").each do |desc|
            description_text = desc.text.strip
            Cat.new(description_text)
        end
    end

end