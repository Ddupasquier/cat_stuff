class CatToysController < ApplicationController
    before_action :find_cat_toy, only: [:show, :update, :destroy, :increment_likes]
    
# IF THE ROUTE SPECIFIES A CAT ID, DISPLAY THE TOYS ASSOCIATED WITH THAT CAT ID
    def index
        if params[:cat_id]
            cat = Cat.find(params[:cat_id])
            cat_toys = cat.cat_toys
        else
        cat_toys = CatToy.all
        end
        render json: cat_toys, status: :ok
    end
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    def show
        @cat_toy
        render json: @cat_toy, status: :ok
    end

    def create
        new_cat_toy = CatToy.create!(cat_toy_params)
        new_cat_toy.valid?
        render json: new_cat_toy, status: :created
    end

    def update
        @cat_toy
        @cat_toy.update!(cat_toy_params)
        render json: @cat_toy, status: :accepted
    end

    def increment_likes
        @cat_toy
        @cat_toy.update!(likes: @cat_toy.likes + 1)
        render json: @cat_toy
    end

    def destroy
        @cat_toy
        @cat_toy.destroy
        head :no_content
    end

    private

    def cat_toy_params
        params.permit(:toy_name, :cat_id)
    end

    def find_cat_toy
        @cat_toy = CatToy.find_by(id:params[:id])
    end

    

end