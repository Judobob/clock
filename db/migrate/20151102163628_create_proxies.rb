class CreateProxies < ActiveRecord::Migration
  def change
    create_table :proxies do |t|
      t.text :Name
      t.string :ip_address
      t.string :port
      t.boolean :active

      t.timestamps null: false
    end
  end
end
