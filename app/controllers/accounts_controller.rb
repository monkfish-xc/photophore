class AccountsController < ApplicationController

  def show
    @account = Account.friendly.find(params[:public_hash])
  end

end
