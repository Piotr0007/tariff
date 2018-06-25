class UsersController < ApplicationController
 

  def index
  end  
  def new
  	@user = User.new

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
    @user = User.new(params.require(:user).permit(:name, :lastname, :email, :phone, :password, :password_confirmation))
    if @user.save
      redirect_to user_path(@user)
      flash[:notice] = 'You account has been saved'
    else
      render 'new' 
    end      
  end 
  def show
#    @course  = @user.courses.build(course: session[:course])   
#    @like = Like.find_or_initialize_by(user: @user, user: current_user)  
#
#    respond_to do |format|
#    format.html do 
#      render
#  end
#    format.json do
#    render json: {
#      id: @article.id,
#      likes: @article.likes.count, 
#      comments: @article.comments.count
#    }
#  end
#  end 
 end
    
  



end

