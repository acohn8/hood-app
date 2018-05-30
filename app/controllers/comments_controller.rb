class CommentsController < ApplicationController

    before_action :find_comment, only: [:edit, :update, :show, :destroy]

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user = User.find_by(id: session[:user_id])
        if @comment.save
            redirect_to @comment.commentable
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @comment.update(comment_edit_params)
            redirect_to @comment.commentable
        else
            render :edit
        end
    end

    def destroy
        parentpage = @comment.commentable
        @comment.destroy
        redirect_to parentpage
    end

    private

        def find_comment
            @comment = Comment.find(params[:id])
        end

        def comment_params
            params.require(:comment).permit(:content, :commentable_id, :commentable_type)
        end

        def comment_edit_params
            params.require(:comment).permit(:content)
        end
end
