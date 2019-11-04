class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :logitude, :longitude
  end
end
