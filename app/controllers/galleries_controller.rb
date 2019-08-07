class GalleriesController < ApplicationController

  def new
    @image = Gallery.new
  end

  def create
    @image = Gallery.new(image_params)
    if @gallery.save
      flash[:notice] = "Image was created succssfully"
      redirect_to images_path
    else
      render new
    end
  end

  def destroy
  end

  def index
    @gallery = Gallery.all
  end

  private

  def image_params
    params.require(:image).permit(:image, :title, :description, :image_file_size, :image_content_type)
  end

end
