class Account < ActiveRecord::Base
  #before_save :generate_unique_id

  has_many :photos, dependent: :destroy
  validates :id, presence: true, uniqueness: true, length: { minimum: 16 }

  # private

    # def generate_unique_id
    #   #begin
    #     account[:id] = SecureRandom.urlsafe_base64
    #   #end while (self.class.exists?(:id => id) || id.empty?)
    # end
end
