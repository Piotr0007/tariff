class DriversController < ApplicationController
  
  def index
  end
  
  def new
	@driver = Driver.new
  end
  
  def create
    @driver = Driver.new(params.require(:driver).permit(:name, :lastname, :email, :brithday, :id_card_driver, :nationality, :password, :password_confirmation))
    @driver.save
  	redirect_to @driver
  end 
  def show
    
  end

end

  #def create
   #  @user = User.new(params.require(:user).permit(:name, :lastname, :email, :phone, :password, :password_confirmation))
   # @user = User.new(params.require[:user].permit(:name, :lastname, :email, :phone, :password))
   # @user.save
   # redirect_to @user
  #end  
