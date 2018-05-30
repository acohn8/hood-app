class NoticesController < ApplicationController
  before_action :find_notice, only: [:edit, :update, :show, :destroy]

  def index
    @notices = Notice.all
  end

  def new
    @notice = Notice.new
  end

  def show
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.user = User.find_by(id: session[:user_id])
    if @notice.save
      redirect_to @notice
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @notice.update(notice_params)
      redirect_to @notice
    else
      render :edit
    end
  end

  def destroy
    @notice.destroy
    redirect_to '/notices'
  end

  private
    def find_notice
      @notice = Notice.find(params[:id])
    end

    def notice_params
      params.require(:notice).permit(:title, :content)
    end

end
