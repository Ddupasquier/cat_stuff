class SessionsController < ApplicationController
    def create
        user = CatOwner.find_by(name: params[:name])
        session[:id] = user.id
        render json: user
    end

    def destroy
        session.delete :id
        head :no_content
    end
end
