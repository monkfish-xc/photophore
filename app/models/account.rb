class Account < ActiveRecord::Base
  before_save :generate_unique_public_hash

  include FriendlyId
  friendly_id :public_hash

  private
    def generate_unique_public_hash
      begin
        self.public_hash = SecureRandom.urlsafe_base64
      end while self.class.exists?(:public_hash => public_hash)
    end
end
