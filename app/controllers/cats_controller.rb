class CatsController < ApplicationController
    before_action :find_cat, only: [:show, :update, :destroy, :increment_likes]
    
    

    def index
        cats = Cat.all
        render json: cats, only: [:id, :name, :age, :breed, :likes],  status: :ok
    end

    def show
        if @cat
            render json: @cat, only: [:name, :age, :breed, :likes], include: {cat_toys: {only: [:toy_name]}}, status: :ok
        else
            render_not_found
        end
    end

    def create
        new_cat = Cat.create(cat_params)
        if new_cat.valid?
          render json: new_cat, status: :created
        else
          render json: { error: new_cat.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        if @cat
            @cat.update(cat_params)
            render json: @cat, status: :accepted
        else
            render_not_found
        end
    end

    def increment_likes
        if @cat
          @cat.update(likes: @cat.likes + 1)
          render json: @cat
        else
            render_not_found
        end
      end

    private

    def cat_params
        params.permit(:name, :breed, :age, :cat_owner_id, :likes)
    end

    # METHOD FOR FINDING CAT BY ID
    def find_cat
        @cat = Cat.find_by(id:params[:id])
    end
end
