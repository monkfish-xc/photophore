class AccountsController < ApplicationController
  def new
    @account = Account.new
    @account.photos.build
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      @account.photos.create(account_params)
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
      params.require(:account).permit!
      #(:id, :public_hash, photos_attributes: [:id, :public_hash, :image])
    end
end
