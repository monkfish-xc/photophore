class AddAccountHashToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :account_hash, :string
    add_index :photos, :account_hash
  end
end
