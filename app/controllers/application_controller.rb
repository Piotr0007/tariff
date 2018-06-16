class ApplicationController < ActionController::Base
  def create
  	@user = User.new(params.require[:user].permit(:name, :lastname, :email, :phone, :password))
  end

end
