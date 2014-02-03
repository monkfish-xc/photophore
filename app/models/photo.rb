# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  account_id  :integer
#  public_hash :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Photo < ActiveRecord::Base
  before_save :generate_unique_public_hash

  include FriendlyId
  friendly_id :public_hash

  belongs_to :account

  private
    def generate_unique_public_hash
      begin
        self.public_hash = SecureRandom.urlsafe_base64(8)
      end while self.class.exists?(:public_hash => public_hash)
    end
end
