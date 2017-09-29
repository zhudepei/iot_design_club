class Admin::SlidesController < ApplicationController
  before_action :set_slide, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @slides = Slide.all
  end

  def show
  end

  def new
    @slide = Slide.new
  end

  def edit
  end

  def create
    @slide = Slide.new(slide_params)

    if @slide.save
      redirect_to [:admin, @slide], notice: 'Slide was successfully created.'
    else
      render :new
    end
  end

  def update
    if @slide.update(slide_params)
      redirect_to [:admin, @slide], notice: 'Slide was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @slide.destroy
    redirect_to admin_slides_url, notice: 'Slide was successfully destroyed.'
  end

  private
  def set_slide
    @slide = Slide.find(params[:id])
  end

  def slide_params
    params.require(:slide).permit(:name, :intro, :picture)
  end
end
