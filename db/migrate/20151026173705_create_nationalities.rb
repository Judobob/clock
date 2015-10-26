class CreateNationalities < ActiveRecord::Migration
  def change
    create_table :nationalities do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
