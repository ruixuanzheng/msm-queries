class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end


  def allactors
    render({ :template => "misc_templates/actors"})
  end

  def youngest
    render({ :template => "misc_templates/youngest"})
  end

  def eldest
    render({ :template => "misc_templates/eldest"})
  end

  def show
    the_id = params.fetch("the_id")
    matching_records = Director.where({:id => the_id})
    @the_director = matching_records.at(0)
    render({ :template => "misc_templates/details"})
  end


  def show_movies
    the_id = params.fetch("the_id")
    matching_records = Movie.where({:id => the_id})
    @the_movie = matching_records.at(0)
    render({ :template => "misc_templates/details"})
  end

end
