# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  account_id         :integer
#  public_hash        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  account_hash       :string(255)
#

class Photo < ActiveRecord::Base
  before_save :generate_unique_public_hash

  include FriendlyId
  friendly_id :public_hash

  belongs_to :account
  validates :account_id, presence: true

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  private
    def generate_unique_public_hash
      begin
        self.public_hash = SecureRandom.urlsafe_base64(10)
      end while self.class.exists?(:public_hash => public_hash)
    end
end
