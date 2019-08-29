class ReadingsController < ApplicationController

  def index
  	reading_list = Reading.all
  	@readings = reading_list.sort_by(&:day)
  end
  
  def show
  	@reading = Reading.find(params[:id])
  end
  
  def new
  	@reading = Reading.new
  end
  
  def create
  	@reading = Reading.new(reading_params)
  	
  	if @reading.save
  		flash[:success] = "Reading added to list"
  		redirect_to readings_path   # different from Hartl 7.4 and displaying all readings and not just the new one
  	else
  		render 'new'
  	end
  end
  
  private
  
  	def reading_params
  		params.require(:reading) .permit(:author, :title, :assign, :day)
  	end
  	
end
