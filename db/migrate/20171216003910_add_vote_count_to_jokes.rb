class AddVoteCountToJokes < ActiveRecord::Migration[5.1]
  def change
    add_column :jokes, :votes_count, :integer, default: 0
  end
end
