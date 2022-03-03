class UsersController < ApplicationController
    before_action :find_user, only: [:show]

    def index
        users = User.all
        render json: users, status: :ok
    end

    def show
        @user
        render json: @user, status: :ok
    end

    # def create
    #     new_user = User.create!(user_params)
    #     new_user.valid?
    #     render json: new_user, status: :created
    # end

    # def destroy
    #     @user
    #     @user.destroy
    #     head :no_content
    # end

    private

    def user_params
        params.permit(:username, :password)
    end

    def find_user
        @user = CatToy.find_by(id:params[:id])
    end
end
