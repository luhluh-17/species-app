class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    change_table :species do |t|
      t.rename :ephitet, :scientific_name
      t.rename :name, :common_name
    end
  end
end
