class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def mail_edit
  end

  def mail_update
  end

  def password_edit
  end

  def password_update
  end

  private

  def user_params
    params.require(:user).permit(:name, :mail, :postnum, :birthday, :sex, :password, :birth_year, :birth_month)
  end
end
