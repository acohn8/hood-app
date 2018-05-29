class NoticesController < ApplicationController
  before_action :find_notice, only: [:edit, :show, :destroy]
  def index
    @notices = Notice.all
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def find_notice
      @notice = Notice.find(params[:id])
    end
end
