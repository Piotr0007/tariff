class UserController < ApplicationController

  def new
  	@user =User.new

  end
  def create
    @user= User.new(permitted_attributes(User))
    @user = current_user
  	if @user.save
  	  redirect_to user_path(@user)
      flash[:notice] = 'You acount has been saved'
  	else
  	  render 'new' 
  	end      
  end 


end