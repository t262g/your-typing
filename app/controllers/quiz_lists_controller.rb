class QuizListsController < ApplicationController
  def new
    @quiz = Quiz.find(params[:quiz_id])
    @form = Form::QuizListCollection.new
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @form = Form::QuizListCollection.new(quiz_list_collection_params)
    if @form.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def quiz_list_collection_params
    params.require(:form_quiz_list_collection).permit(quiz_lists_attributes: [:question, :answer])
  end
end
