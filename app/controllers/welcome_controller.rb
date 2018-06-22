class WelcomeController < ApplicationController
	 
  def index
  	@welcome
  end
  def new
  	@welcome = Welcome.new
  end
  def show
  end 
  def about_tariff
  end
  def news
  end
  def Your_journeys
  end
  def settings
  end
 
end
