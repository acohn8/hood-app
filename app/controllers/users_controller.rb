class UsersController < ApplicationController
    before_action :require_login, only: [:index]
    before_action :find_user, only: [:show]

    def index
        @users = current_user.neighborhood.users
    end

    def new
        @user = User.new
    end

    def show
    end

    def create
        found_hood = AddrGetter.get(user_params)
        neighborhood = Neighborhood.find_or_create_by(hood_name: found_hood)
        @user = User.new(user_params)
        @user.neighborhood = neighborhood
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to :root
        else
            flash[:error] = @user.errors.full_messages
            redirect_to controller: 'users', action: 'new'
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :neighborhood_id, :email, :tag_line, :line_1, :line_2, :zip)
    end

    def user_address_params
        params.require(:user).permit(:line_1, :line_2, :zip)
    end

    def require_login
      return head(:forbidden) unless session.include? :user_id
    end

    def find_user
        @user = User.find(params[:id])
    end
end
