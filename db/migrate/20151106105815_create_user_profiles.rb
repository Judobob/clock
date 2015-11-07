class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :second_name
      t.string :telephone
      t.string :email

      t.timestamps null: false
    end
  end
end
