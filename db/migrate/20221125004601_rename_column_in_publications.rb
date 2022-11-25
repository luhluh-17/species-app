class RenameColumnInPublications < ActiveRecord::Migration[7.0]
  def change
    rename_column :publications, :publiction_date, :publication_date
  end
end
