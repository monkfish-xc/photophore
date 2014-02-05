class AccountMailer < ActionMailer::Base
  default from: "ph@photophore.com"

  def new_album_email(account)
    @account = account
    mail(to: "atom.morgan@gmail.com", subject: "Photophore album created: /p/#{@account.public_hash}")
  end
end
