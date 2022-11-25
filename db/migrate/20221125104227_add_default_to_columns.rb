class AddDefaultToColumns < ActiveRecord::Migration[7.0]
  def change
    change_column :species, :kingdom, :string, :default => "N/A"
    change_column :species, :phylum, :string, :default => "N/A"
    change_column :species, :classification, :string, :default => "N/A"
    change_column :species, :order, :string, :default => "N/A"
    change_column :species, :family, :string, :default => "N/A"
  end
end
