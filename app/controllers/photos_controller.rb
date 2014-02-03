class PhotosController < ApplicationController

  private
    def photo_params
      params.require(:photo).permit(:public_hash, :account_id)
    end
end
