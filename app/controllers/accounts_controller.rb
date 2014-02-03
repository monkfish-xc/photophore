class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new
    if @account.save
      redirect_to @account
    else
      render 'new'
    end
  end

  def show
    @account = Account.friendly.find(params[:public_hash])
  end

  private
    def account_params
      params.require(:account).permit(:public_hash, photos_attributes: [:public_hash])
    end
end
