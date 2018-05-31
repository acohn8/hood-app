class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to :root
        else
            flash[:message] = "Username & Password Do Not Match"
            redirect_to controller: 'sessions', action: 'new'
        end
    end


    def destroy
      session.clear
      redirect_to controller: 'sessions', action: 'new'
    end

end
