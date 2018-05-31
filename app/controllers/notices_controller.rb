class NoticesController < ApplicationController
  before_action :find_notice, only: [:edit, :update, :show, :destroy]
  before_action :unauth_redirect, only: [:edit, :show, :destroy]

  def index
    @notices = Notice.all.select { |n| n.neighborhood == current_user.neighborhood}
  end

  def new
    @notice = Notice.new
  end

  def show
    @comment = Comment.new
  end

  def create
    @notice = Notice.new(notice_params)
    @notice.user = current_user
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

    def unauth_redirect
      if @notice.neighborhood != current_user.neighborhood
        redirect_to notices_path
      end
    end

end
