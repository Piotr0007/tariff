class CoursesController < ApplicationController

  def index
  end 
  def new 
    @course = Course.new
  end
  def create
  	@course = Course.new(params.require(:course).permit(:each_people, :lastname, :email, :phone, :password, :password_confirmation))
    @course.save
    redirect_to @course
  end
  def show
  end


end
