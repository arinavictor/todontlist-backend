class UsersController < ApplicationController

    def index 
        @users = User.all 

        render json: @users, include: [:lists]
    end 

    def show 
        @user = User.find(params[:id])

        render json: @user, include: [:lists]
    end 
 
    private

    def user_params
        params.require(:user).permit(:username, :password)
    end 
end
