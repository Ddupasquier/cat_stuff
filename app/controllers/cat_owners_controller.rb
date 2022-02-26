class CatOwnersController < ApplicationController
    before_action :find_cat_owner, only: [:show, :update]
    

    def index
        owners = CatOwner.all
        render json: owners, except: [:created_at, :updated_at], include: {cats: {only: [:id, :name, :breed, :age]}}, status: :ok
    end

    def show
        if @owner
            render json: @owner, except: [:id, :created_at, :updated_at], include: {cats: {only: [:id, :name, :breed, :age]}}, status: :ok
        else
            render_not_found
        end
    end

    def create
        new_owner = CatOwner.create!(cat_owner_params)
        render json: new_owner, status: :created
    end

    def update
        if @owner.valid?
            @owner.update(cat_owner_params)
            render json: @owner, status: :accepted
        else
            render_not_found
        end
    end

    private

    def cat_owner_params
        params.permit(:name, :age, :city, :state)
    end

    def find_cat_owner
        @owner = CatOwner.find_by(id:params[:id])
    end
end
