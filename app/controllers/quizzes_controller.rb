class QuizzesController < ApplicationController
  def index
  end

  def new
    @quiz_management = QuizManagement.new
  end

  def create
    @quiz_sets = []
    create_quiz_sets
    @quiz_management = QuizManagement.new(quiz_params)
    if @quiz_management.valid?
      @quiz_management.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def create_quiz_sets
    i = 0
    while params[:quiz_management][i.to_s]
      quiz_set = params[:quiz_management][i.to_s].permit(:question, :answer).to_h
      @quiz_sets << quiz_set if !quiz_set[:question].blank? && !quiz_set[:answer].blank?
      i += 1
    end
  end

  def quiz_params
    params.require(:quiz_management).permit(:title, :explanation).merge(quiz_sets: @quiz_sets, user_id: current_user.id)
  end
end
