class YoController < ApplicationController
  
  def youngest
    #the_id = params.fetch("the_id")
    #@the_youngest = Director.where({:id => the_id}).maximum(:dob)

    render({ :template => "yo_templates/youngest"})
  end

  def eldest

    render({ :template => "yo_templates/eldest"})
  end

end
