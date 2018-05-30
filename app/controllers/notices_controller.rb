class NoticesController < ApplicationController
  before_action :find_notice, only: [:edit, :show, :destroy]
  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
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

    def notice_params
      params.require(:notice).permit(:title, :content)
    end

end
