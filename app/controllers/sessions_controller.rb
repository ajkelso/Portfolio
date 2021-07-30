class SessionsController < ApplicationController

    def new
    
    end

    def create 
        byebug
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path
        else
            flash[:error] = "Incorrect username or password"
            redirect_to signin_path
        end

    end

    private

    def session_params
        params.permit(:username, :password)
    end


end
