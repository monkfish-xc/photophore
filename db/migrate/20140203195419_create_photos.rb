class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :account
      t.string :public_hash

      t.timestamps
    end
    add_index :photos, :public_hash, unique: true
  end
end
