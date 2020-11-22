class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @quizzes = @user.quizzes
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    image = @user.image
    params[:user][:image] = image if params[:user][:image].nil?

    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def user_params
    params.require(:user).permit(:nickname, :image)
  end
end
