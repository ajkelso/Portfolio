class UsersController < ApplicationController
    
    before_action :find_user
    

    private

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end

    def find_user
        @user = User.find_by(id: params[:id])
    end


end
