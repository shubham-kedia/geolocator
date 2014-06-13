class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :code
      t.text :description
      t.integer :state_id
      t.timestamps
    end
  end
end
