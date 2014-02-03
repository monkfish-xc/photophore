class AccountsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @account = Account.friendly.find(params[:public_hash])
  end

end
