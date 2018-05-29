class TransactionsController < ApplicationController
  before_action :find_transaction, only: [:edit, :show, :destroy]
  def index
    @transactions = Transaction.all
  end

  def new
  end

  def show
  end

  def create
    byebug
    session[:user_id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def find_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      #require params here
    end

end
