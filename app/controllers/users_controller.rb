class UsersController < ApplicationController

    def index 
        @users = User.includes(lists: [:todos])
        
        render json: UserSerializer.new(@users)
    end 

    def show 
        @user = User.includes(lists: [:todos]).find(params[:id])

        render json: UserSerializer.new(@user)
    end 
 
    private

    def user_params
        params.require(:user).permit(:username, :password)
    end 
end
