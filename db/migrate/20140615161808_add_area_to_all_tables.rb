class AddAreaToAllTables < ActiveRecord::Migration
  def change
    change_table :countries do |t|
      t.column :area,:bigint
    end
    change_table :states do |t|
      t.column :area,:bigint
    end
    change_table :cities do |t|
      t.column :area,:bigint
    end
  end
end
