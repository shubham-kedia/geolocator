class AddFieldsToManyTable < ActiveRecord::Migration
  def change
    change_table :countries do |t|
      t.column :population,:bigint
      t.column :literacy,:float
      t.column :wiki_link,:string
      t.references :currency_type
      t.references :time_zone
    end
    change_table :states do |t|
      t.column :population,:bigint
      t.column :literacy,:float
      t.column :wiki_link,:string
    end
    change_table :cities do |t|
      t.column :population,:bigint
      t.column :wiki_link,:string
    end
  end
end
