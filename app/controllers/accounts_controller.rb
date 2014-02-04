class AccountsController < ApplicationController

  def show
    @account = Account.friendly.find(params[:public_hash])
    render json: Account.friendly.find(params[:public_hash])
  end

  private
    def account_params
      params.require(:account).permit(:public_hash, photos_attributes: [:id, :public_hash, :image])
    end
end
