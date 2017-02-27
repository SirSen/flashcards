class UsersController < ApplicationController
  skip_before_action :require_login, only: [:index, :new, :create, :edit, :update]
  before_action :user_find, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to root_url, notice: 'Вы зарегистрированы!'
    else
      render :new
    end
  end

  def edit; end

  def update
    def update
      if @user.update_attributes(user_params)
        redirect_to root_url, notice: 'Пользователь обновлен!'
      else
        render :edit
      end
    end
  end

  private

  def user_find
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
