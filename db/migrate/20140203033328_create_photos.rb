class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos, id: false do |t|
      t.string :id, primary_key: true
      t.string :account_id

      t.timestamps
    end
    add_index :photos, :id, unique: true
  end
end
