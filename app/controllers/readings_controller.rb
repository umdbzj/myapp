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
  
  def edit
  	@reading = Reading.find(params[:id])     # not sure how we're going to get this yet ....
  end
  
  def update
  	@reading = Reading.find(params[:id])    # if it can find it in the edit, it can find it to update ....
  	if @reading.update_attributes(reading_params)
  		flash[:success] = "Reading updated"
  		redirect_to readings_path
  	else
  		render 'edit'
  	end
  end
  
  private
  
  	def reading_params
  		params.require(:reading) .permit(:author, :title, :assign, :day)
  	end
  	
end
