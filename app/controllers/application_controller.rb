class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
  	render html: "CSC 105 - The Digital Age"
  end
  
end
