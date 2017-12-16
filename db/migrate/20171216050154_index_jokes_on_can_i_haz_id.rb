class IndexJokesOnCanIHazId < ActiveRecord::Migration[5.1]
  def change
    add_index :jokes, :can_i_haz_id
  end
end
