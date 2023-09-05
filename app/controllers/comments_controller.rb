class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        Comments::PostToSlackJob.perform_later(@comment)
        format.html { redirect_to user_root_url, notice: "Feedback was successfully submitted." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:comment)
    end
end
