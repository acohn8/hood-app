class TransactionsController < ApplicationController

  before_action :find_transaction, only: [:edit, :update, :show, :destroy]
  before_action :unauth_redirect, only: [:edit, :show, :destroy]


  def index
    if params[:query]
      @transactions = Transaction.search(params[:query].first).select { |t| t.neighborhood == current_user.neighborhood}
    else
      @transactions = Transaction.all.select { |t| t.neighborhood == current_user.neighborhood }
    end
  end

  def new
    @transaction = Transaction.new
  end

  def show
    @comment = Comment.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
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

    def unauth_redirect
      if @transaction.neighborhood != current_user.neighborhood
        redirect_to transactions_path
      end
    end
end
