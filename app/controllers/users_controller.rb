class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @p =params
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
 	  flash[:success] = "successful registration"    	
      redirect_to @user
    else
      render 'new'
    end
  end
end
