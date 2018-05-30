class TransactionsController < ApplicationController

  before_action :find_transaction, only: [:edit, :update, :show, :destroy]


  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def show
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = User.find_by(id: session[:user_id])
    if @transaction.save
      redirect_to @transaction
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @transaction.update(transaction_params)
      redirect_to @transaction
    else
      render :edit
    end
  end

  def destroy
    @transaction.destroy
    redirect_to '/transactions'
  end

  private
    def find_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:item_name, :item_description, :condition, :price)
    end

end
