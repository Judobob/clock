class CreateLanguageCountryLinkings < ActiveRecord::Migration
  def change
    create_table :language_country_linkings do |t|
      t.integer :language_id
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
