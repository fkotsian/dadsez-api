class RenameCanIHazIdWithUnderscores < ActiveRecord::Migration[5.1]
  def change
    rename_column :jokes, :canihaz_id, :can_i_haz_id
  end
end
