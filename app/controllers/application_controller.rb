class ApplicationController < ActionController::Base
 

  def create
  	@user = User.new(params.require[:user].permit(:name, :lastname, :email, :phone, :password))
  	@driver = Driver.new(params.require(:driver).permit(:name, :lastname, :email, :brithday, :id_card_driver, :nationality, :password, :password_confirmation))
  end
  

end
