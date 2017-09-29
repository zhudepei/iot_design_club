class NewsController < ApplicationController
  layout 'home'

  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end
end
