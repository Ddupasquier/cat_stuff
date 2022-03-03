class CatsController < ApplicationController
    before_action :find_cat, only: [:show, :update, :destroy, :increment_likes]
    
    

    def index
        cats = Cat.all
        render json: cats, status: :ok
    end

    def show
        # session[:page_views] ||= 0
        # session[:page_views] += 1

        # if session[:page_views] <=10
            @cat
            render json: @cat, status: :ok
        # else
        #     render json: { error: "Maximum Cats Viewed" }, status: :unauthorized
        # end
    end

    def create
        new_cat = Cat.create!(cat_params)
        new_cat.valid?
        render json: new_cat, status: :created
    end

    def update
        @cat
        @cat.update!(cat_params)
        render json: @cat, status: :accepted
    end

    def increment_likes
        @cat
        @cat.update!(likes: @cat.likes + 1)
        render json: @cat
      end

    private

    def cat_params
        params.permit(:name, :age, :breed, :cat_owner_id)
    end

    # METHOD FOR FINDING CAT BY ID
    def find_cat
        @cat = Cat.find_by(id:params[:id])
    end

    
end
