class C1Controller < ApplicationController

	layout false
	
  def index
  	render(:template => 'c1/index')
  	#render('index')
  end

  def hello
  end

end
