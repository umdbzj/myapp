class ReadingsController < ApplicationController
  def index
  	@readings = Reading.all
  end
  
  def show
  end
  
  def new
  end
end
