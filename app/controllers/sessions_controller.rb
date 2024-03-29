class SessionsController < ApplicationController
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to players_path
        else
            flash[:errors] = ["Invalid username or password"]
            redirect_to root_path
        end
    end

    def destroy
        reset_session
        redirect_to root_path
    end
end