class PeopleController < ApplicationController
  layout 'home'

  def index
    @people = Person.all.group_by { |p| p.period }
  end

  def show
    @person = Person.find(params[:id])
  end
end
