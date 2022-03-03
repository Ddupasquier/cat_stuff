class CatOwnersController < ApplicationController
    before_action :find_cat_owner, only: [:show, :update, :destroy]
    

    def index
        owners = CatOwner.all
        render json: owners, status: :ok
    end

    def show
        owner = CatOwner.find_by(id: params[:id])
        render json: owner, serializer: OwnerscatsSerializer
    end

    def create
        new_owner = CatOwner.create!(cat_owner_params)
        render json: new_owner, status: :created
    end

    def update
        @owner.valid?
        @owner.update!(cat_owner_params)
        render json: @owner, status: :accepted
    end

    def destroy
        @owner
        @owner.destroy!
        head :no_content
    end

    private

    def cat_owner_params
        params.permit(:name, :age, :city, :state, :image)
    end

    def find_cat_owner
        @owner = CatOwner.find_by(id:params[:id])
    end

    
end
