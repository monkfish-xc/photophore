class PhotosController < ApplicationController
  def new
    @account = Account.new
    @photo = @account.photos.build
  end

  def create
    @account = Account.create
    @photo = @account.photos.build(photo_params)
    if @photo.save
      redirect_to @account
    else
      render 'new'
    end
  end

  private
    def photo_params
      params.require(:photo).permit!
    end
end
