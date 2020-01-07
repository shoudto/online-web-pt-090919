class RecipesController < ApplicationController

    before do
        require_login
    end

    # CREATE

        # New
        # make a get request to '/recipes/new'
        get '/recipes/new' do
            @ingredients = Ingredient.all
            erb :'/recipes/new'
        end

        # Create
        # make a post request to '/recipes'
        post '/recipes' do
            
            filtered_params = params
            filtered_params["recipe"] = params["recipe"].reject{|key, value| key == "image" && value.empty?}
            filtered_params["recipe"]["method"] = filtered_params["recipe"]["method"].gsub("\r\n", "<br/>")
            recipe = current_user.recipes.build(filtered_params["recipe"])
            params["ingredients"].uniq.each do |ingredient_hash|
                if !ingredient_hash["name"].empty?
                    if ingredient = Ingredient.find_by(name: ingredient_hash["name"])
                        recipe.ingredients << ingredient
                    else
                        if ingredient_hash["image"].empty?
                            ingredient_hash["image"] = "https://spoonacular.com/cdn/ingredients_100x100/basil.jpg"
                        end
                        recipe.ingredients.build(ingredient_hash)
                    end
                end
            end
            recipe.image = nil if recipe.image.empty?
            if recipe.save
                redirect '/recipes'
            else
                @ingredients = Ingredient.all
                @errors = recipe.errors.full_messages.join("<br/>")
                erb :'/recipes/new'
            end
        end

    # READ

        # Index
        # make a get request to '/recipes'

        get '/recipes' do
            @recipes = Recipe.all.reverse
            erb :'recipes/index'
        end

        # Show
        # make a get request to '/recipes/:id'

        get '/recipes/:id' do
            @recipe = Recipe.find_by(id: params[:id])
            if @recipe
                erb :'recipes/show'
            else
                redirect '/recipes'
            end
        end

    # UPDATE

        # Edit
        # make a get request to '/recipes/:id/edit'
        get '/recipes/:id/edit' do
            @recipe = Recipe.find(params[:id])
            @ingredients = Ingredient.all
            erb :'/recipes/edit'
        end

        # Update
        # make a patch request to '/recipes/:id'
        patch '/recipes/:id' do
            recipe = Recipe.find(params[:id])
            if !params["recipe"]["title"].empty? && !params["recipe"]["method"].empty?
                params["recipe"]["ingredient_ids"] = [] if params["recipe"]["ingredient_ids"].nil?
                recipe.update(params["recipe"])
                params["ingredients"].uniq.each do |ingredient_hash|
                    if !ingredient_hash["name"].empty?
                        if ingredient = Ingredient.find_by(name: ingredient_hash["name"])
                            recipe.ingredients << ingredient
                        else
                            if ingredient_hash["image"].empty?
                                ingredient_hash["image"] = "https://spoonacular.com/cdn/ingredients_100x100/basil.jpg"
                            end
                            recipe.ingredients.build(ingredient_hash)
                        end
                    end
                end
                binding.pry
                redirect "/recipes/#{params[:id]}"
            else
                @error = "Data invalid. Please try again."
                erb :'/recipes/edit'
            end
        end

    # DESTROY

        # make a delete request to '/recipes/:id'
        delete '/recipes/:id' do
            recipe = Recipe.find(params[:id])
            recipe.destroy
            redirect '/recipes'
        end

end