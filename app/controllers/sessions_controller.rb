class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        return redirect_to controller: 'sessions', action: 'new' unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to controller: 'application', action: 'home'
    end


    def destroy
      session.clear
      redirect_to controller: 'sessions', action: 'new'
    end

end
