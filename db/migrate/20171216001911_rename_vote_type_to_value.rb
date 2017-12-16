class RenameVoteTypeToValue < ActiveRecord::Migration[5.1]
  def change
    rename_column :votes, :type, :points
  end
end
