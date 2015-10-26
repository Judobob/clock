class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.text :name
      t.string :iso

      t.timestamps null: false
    end
  end
end
