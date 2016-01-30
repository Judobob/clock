class CreateGeneralEnquiries < ActiveRecord::Migration
  def change
    create_table :general_enquiries do |t|
      t.string :email
      t.text :message

      t.timestamps null: false
    end
  end
end
