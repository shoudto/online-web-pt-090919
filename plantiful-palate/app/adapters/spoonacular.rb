module Spoonacular

    class Adapter

        API_KEY = ENV["API_KEY"]
        BASE_URL = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&intolerances=gluten&number=10&fillIngredients=true&apiKey=#{API_KEY}"
        
        def fetch_recipes

            recipes = JSON.parse(RestClient.get(BASE_URL))
            
            recipes["results"].each do |recipe|
                show_url = "https://api.spoonacular.com/recipes/#{recipe["id"]}/analyzedInstructions?apiKey=#{API_KEY}"
                method = JSON.parse(RestClient.get(show_url)).map{ |result| result["steps"] }.flatten.map{ |step| step["step"] }.join("<br/><br/>")
                @recipe = Recipe.new(title: recipe["title"], image: recipe["image"], method: method)
                ingredients = recipe["missedIngredients"].each do |ingredient|
                    ingredient = Ingredient.find_or_create_by(name: ingredient["name"], image: ingredient["image"])
                    @recipe.ingredients << ingredient
                end
                @recipe.save
            end

        end

    end

end