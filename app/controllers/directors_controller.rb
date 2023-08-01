class DirectorsController < ApplicationController
  

  def index
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    matching_records = Director.where({:id => the_id})
    @the_director = matching_records.at(0)
    render({ :template => "director_templates/details"})
  end

  def youngest
    @the_youngest = Director.maximum(:dob)
    @name = Director.where({:dob => @the_youngest}).at(0).name
    @link = Director.where({:dob => @the_youngest}).at(0).id
    render({ :template => "director_templates/youngest"})
  end

  def eldest
    @the_eldest = Director.minimum(:dob)
    @name = Director.where({:dob => @the_eldest}).at(0).name
    @link = Director.where({:dob => @the_eldest}).at(0).id
    render({ :template => "director_templates/eldest"})
  end

end
