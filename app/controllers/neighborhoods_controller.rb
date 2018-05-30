class NeighborhoodsController < ApplicationController

  def index
    return redirect_to '/login' unless session[:user_id]
    @user = User.find_by(id: session[:user_id])
    @notices = Notice.all.select { |n| n.neighborhood == @user.neighborhood }
    @transactions = Transaction.all.select { |t| t.neighborhood == @user.neighborhood }
    @neighbors = User.all.select { |u| u.neighborhood == @user.neighborhood }
  end
end
