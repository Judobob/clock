class CreateGoogleSearches < ActiveRecord::Migration
  def change
    create_table :google_searches do |t|
      t.integer :user_id
      t.string :search
      t.text :result
      t.integer :user_id
      t.string :ip_address

      t.timestamps null: false
    end
  end
end
