class UsersController < ApplicationController

  def new
  	@user =User.new

  end
 # def create
 #   @user= User.new(permitted_attributes(User))
 #   @user = current_user
 # 	if @user.save
 # 	  redirect_to user_path(@user)
 #     flash[:notice] = 'You acount has been saved'
 # 	else
 # 	  render 'new' 
 # 	end      
 # end 
  def create
    @user = User.new(params.require[:user].permit(:name, :lastname, :email, :phone, :password))
    @user.save
    redirect_to @user
  end  
  def show
    @user = User.find(params[:id])
  end
  def devise
  end


end

