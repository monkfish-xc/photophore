class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :public_hash

      t.timestamps
    end
    add_index :accounts, :public_hash, unique: true
  end
end
