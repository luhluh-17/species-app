class AddTaxonomicRankToSpecies < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :kingdom, :string
    add_column :species, :phylum, :string
    add_column :species, :classification, :string
    add_column :species, :order, :string
    add_column :species, :family, :string
  end
end
