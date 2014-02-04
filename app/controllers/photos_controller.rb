class PhotosController < ApplicationController
  def new
    @account = Account.new
    @photo = @account.photos.build
  end

  def create
    @account = (photo_params[:account_hash].empty?) ? Account.create : Account.friendly.find(photo_params[:account_hash])
    @photo = @account.photos.build(photo_params)
    if @photo.save
      redirect_to @account
    else
      render 'new'
    end
  end

  def show
    render json: Photo.friendly.find(params[:public_hash])
  end

  private
    def photo_params
      params.require(:photo).permit(:account_hash, :image)
    end
end
