class CreatePublicPrivates < ActiveRecord::Migration
  def change
    create_table :public_privates do |t|
      t.text :private_key
      t.text :public_key
      t.integer :message_id

      t.timestamps null: false
    end
  end
end
