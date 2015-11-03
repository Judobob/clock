class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :user_first_name
      t.string :user_second_name
      t.string :user_email

      t.timestamps null: false
    end
  end
end
