class QuizzesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :identify_user, only: [:edit, :destroy]
  before_action :find_quiz, only: [:show, :edit, :update, :destroy]

  def index
    @quizzes = Quiz.includes(:user).order('created_at DESC')
  end

  def new
    @quiz = Quiz.new
  end
  # def new
  #   @quiz_management = QuizManagement.new
  # end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to new_quiz_quiz_list_path(@quiz)
    else
      render :new
    end
  end
  # def create
  #   build_quiz_management
  #   if @quiz_management.valid?
  #     @quiz_management.save
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  def show
    @comment = Comment.new
    @comments = @quiz.comments.includes(:user).order('created_at DESC')
    @quiz_lists = @quiz_lists.shuffle
    @json_quiz = @quiz_lists.to_json
    @json_info = [current_user.nickname, @quiz.id].to_json if user_signed_in?
  end

  # def edit
  #   @quiz_sets = @quiz_lists
  #   @quiz_management = QuizManagement.new
  # end

  # def update
  #   build_quiz_management
  #   if @quiz_management.valid?
  #     @quiz_management.update(@quiz)
  #     redirect_to root_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @quiz.destroy
    redirect_to root_path
  end

  private

  # def build_quiz_management
  #   @quiz_sets = []
  #   create_quiz_sets
  #   @quiz_management = QuizManagement.new(quiz_params)
  # end

  # def create_quiz_sets
  #   i = 0
  #   while params[:quiz_management][i.to_s]
  #     quiz_set = params[:quiz_management][i.to_s].permit(:question, :answer).to_h
  #     @quiz_sets << quiz_set if !quiz_set[:question].blank? && !quiz_set[:answer].blank?
  #     i += 1
  #   end
  # end

  def quiz_params
    params.require(:quiz).permit(:title, :explanation).merge(user_id: current_user.id)
  end

  # def quiz_params
  #   params.require(:quiz_management).permit(:title, :explanation).merge(quiz_sets: @quiz_sets, user_id: current_user.id)
  # end

  def find_quiz
    @quiz = Quiz.find(params[:id])
    @quiz_lists = @quiz.quiz_lists
  end

  def identify_user
    redirect_to root_path if current_user != Quiz.find(params[:id]).user
  end
end
