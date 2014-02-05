class PhotosController < ApplicationController
  def new
    @account = Account.new
    @photo = @account.photos.build
  end

  def create
    @account = create_account_or_find_by(photo_params[:account_hash])

    if photo_params[:image].is_a?(String)
      @photo = @account.photos.build
      @photo.image = URI.parse(photo_params[:image])
    else
      @photo = @account.photos.build(photo_params)
      @photo.account_hash = @account.public_hash
    end
    
    if @photo.save
      redirect_to @account
    else
      render 'new'
    end
  end

  def show
    @photo = Photo.friendly.find(params[:public_hash])
  end

  private
    def create_account_or_find_by(account_hash)
      account = Account.friendly.find(account_hash)
    rescue
      account = Account.create
    end

    def photo_params
      params.require(:photo).permit(:account_hash, :image)
    end
end
