class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts, id: false do |t|
      t.string :id, primary_key: true

      t.timestamps
    end
    add_index :accounts, :id, unique: true
  end
end
