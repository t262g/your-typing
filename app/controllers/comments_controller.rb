class CommentsController < ApplicationController

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @comment = @quiz.comments.new(comment_params)
    if @comment.save
      redirect_to quiz_path(@quiz)
    else
      render "quizzes/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id) 
  end
end
