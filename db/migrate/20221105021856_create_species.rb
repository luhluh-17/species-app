class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :genus
      t.string :ephitet
      t.string :name
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
