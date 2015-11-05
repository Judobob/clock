class CreateMegaTables < ActiveRecord::Migration
  def change
    create_table :mega_tables do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
