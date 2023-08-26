class RenameImageColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :image, :icon
  end
end
