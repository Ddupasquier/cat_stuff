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
        if @cat_toy
            render json: @cat_toy, except: [:created_at, :updated_at], status: :ok
        else
            render_not_found
        end
    end

    def create
        new_cat_toy = CatToy.create(cat_toy_params)
        if new_cat_toy.valid?
            render json: new_cat_toy, status: :created
        else
            render_incomplete_entry
        end
    end

    def update
        if @cat_toy
            @cat_toy.update(cat_toy_params)
            render json: @cat_toy, status: :accepted
        else
            render_not_found
        end
    end

    def increment_likes
        if @cat_toy
          @cat_toy.update(likes: @cat_toy.likes + 1)
          render json: @cat_toy
        else
            render_not_found
        end
    end

    def destroy
        if @cat_toy
          @cat_toy.destroy
          head :no_content
        else
            render_not_found
        end
    end

    private

    def cat_toy_params
        params.permit(:toy_name, :cat_id)
    end

    def find_cat_toy
        @cat_toy = CatToy.find_by(id:params[:id])
    end

end