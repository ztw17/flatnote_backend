class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, include: :notes 
    end

    def create
        user = User.find_or_create_by(user_params)
        render json: user, include: :notes 
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end
end