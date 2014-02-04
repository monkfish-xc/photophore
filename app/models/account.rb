# == Schema Information
#
# Table name: accounts
#
#  id          :integer          not null, primary key
#  public_hash :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Account < ActiveRecord::Base
  before_save :generate_unique_public_hash

  include FriendlyId
  friendly_id :public_hash

  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos

  private
    def generate_unique_public_hash
      begin
        self.public_hash = SecureRandom.urlsafe_base64
      end while self.class.exists?(:public_hash => public_hash)
    end
end
