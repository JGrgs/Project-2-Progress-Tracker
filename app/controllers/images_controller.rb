class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
    @user = User.find @image.user_id
  end

  def new
    @image = current_user.images.new
  end

  def create
    @image = current_user.images.new image_params
    @image.save
    redirect_to image_path(@image.id)
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.image_url = params[:image][:image_url]
    @image.date = params[:image][:date]
    @image.title = params[:image][:title]
    @image.description = params[:image][:description]
    @image.category = params[:image][:category]
    @image.save
    redirect_to image_path(@image.id)
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to("/images")
  end

  private
  def image_params
    return params.require(:image).permit(:image_url, :date, :title, :description, :category)
  end
end
