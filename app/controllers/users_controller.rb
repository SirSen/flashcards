class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end

  private

  def cards_params
    params.require(:users).permit(:email, :password, :password_confirmation)
  end
  
end
