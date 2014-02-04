class PhotosController < ApplicationController
  def new
    @photo = Photo.new(photo_params)
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.save!
  end

  private
    def photo_params
      params.require(:photo).permit!
    end
end
