class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end

  def alldirectors
    render({ :template => "misc_templates/directors"})
  end

  def allmovies
    render({ :template => "misc_templates/movies"})
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

end
