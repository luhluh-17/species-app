class ReorderColumnInSpecies < ActiveRecord::Migration[7.0]
  def change
    change_column :species, :genus, :string, after: :kingdom
    change_column :species, :updated_at, :timestamp, after: :family
    change_column :species, :created_at, :timestamp, after: :family
  end
end
