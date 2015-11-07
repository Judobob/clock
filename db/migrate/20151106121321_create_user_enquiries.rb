class CreateUserEnquiries < ActiveRecord::Migration
  def change
    create_table :user_enquiries do |t|
      t.integer :user_profile_id
      t.text :description

      t.timestamps null: false
    end
  end
end
