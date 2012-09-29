class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @p =params
  end

  def new
  	@user = User.new # in order to generate sign-up form by form_for(@user)
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
 	    flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def index
  end
end
