class AccountsController < ApplicationController

  def show
    @account = Account.friendly.find(params[:public_hash])

    respond_to do |format|
      format.html
      format.json { render :json => @account.photos.to_json }
    end
  end

  private
    def account_params
      params.require(:account).permit(:public_hash, photos_attributes: [:id, :public_hash, :image])
    end
end
