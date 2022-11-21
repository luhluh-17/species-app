class ChangeDescriptionToTextInSpecies < ActiveRecord::Migration[7.0]
  def change
    change_column :species, :description, :text
  end
end
