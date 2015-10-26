class CreateNationalityCountryLinkings < ActiveRecord::Migration
  def change
    create_table :nationality_country_linkings do |t|
      t.integer :nationality_id
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
