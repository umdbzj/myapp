class StaticPagesController < ApplicationController
  def home
  end

  def schedule
  end

  def labs
  end

  def homework
  end

  def deadlines
  end

  def help
  end
  
  def resources
  end
  
  def instructor
  end
  
  def contact
  	nameList = ["Professor Johnson", "Barbara", "Dr. Johnson", "Ms. Johnson"]
  	nameNum = (0..nameList.length-1).to_a.shuffle.first
	@name = nameList[nameNum]
	
	adjList = ["usually", "reliably", "most often", "frequently", "indubitably", "generally"]
	adjNum = (0..adjList.length-1).to_a.shuffle.first
	@adj = adjList[adjNum]
	
	profList = ["teaching", "attending meetings", "serving on a committee", "in office hours", "eating lunch", "taking a walk"]
	profNum = (0..profList.length-1).to_a.shuffle.first
	@profaction = profList[profNum]
	
	advList = ["happily", "actively", "carefully", "intently"]
	advNum = (0..advList.length-1).to_a.shuffle.first
	@adv = advList[advNum]
	
	actList = ["practicing music", "catching Pokemon", "turning coffee into code", "claiming portals for the Resistance", "returning Foundables"]
	actNum = (0..actList.length-1).to_a.shuffle.first
	@act = actList[actNum]
  	
  	@result = (1..99).to_a.shuffle.first
  	@result2 = (1..99).to_a.shuffle.first
  	
  end
  
  def about
  end
  
end
