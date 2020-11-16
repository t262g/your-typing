class CommentsController < ApplicationController
  def create
    @quiz = Quiz.find(params[:quiz_id])
    @comment = @quiz.comments.new(comment_params)
    render json: { comment: @comment } if @comment.save
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id)
  end
end
