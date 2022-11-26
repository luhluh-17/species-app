class UpdateSpeciesTable < ActiveRecord::Migration[7.0]
  def change
    change_column :species, :genus, :string, default: 'N/A'
    rename_column :species, :scientific_name, :species_name
  end
end
