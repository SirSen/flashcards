class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
    @user = User.new
  end

  def create
     if @user = login(params[:user_sessions][:email], params[:user_sessions][:password])
      redirect_back_or_to(root_path, notice: 'Вы успешно зашли в свой аккаунт')
    else
      redirect_to(login_path, flash: { error: "Войти не удалось"})
    end
  end

  def destroy
    logout
    redirect_to(login_path, notice: 'Вы вышли')
  end

end
