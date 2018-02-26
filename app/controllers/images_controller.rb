class ImagesController < ApplicationController
  def index
    
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new
    @image.image_url = params[:image][:image_url]
    @image.date = params[:image][:date]
    @image.title = params[:image][:title]
    @image.description = params[:image][:description]
    @image.category = params[:image][:category]
    @image.save
    redirect_to("/images")
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.new
    @image.image_url = params[:image][:image_url]
    @image.date = params[:image][:date]
    @image.title = params[:image][:title]
    @image.description = params[:image][:description]
    @image.category = params[:image][:category]
    @image.save
    redirect_to("/images/#{@image.id}")
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to("/images")
  end
end
