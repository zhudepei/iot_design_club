class HomeController < ApplicationController
  def index
    @slides = Slide.all
    @people = Person.all
  end

end
