class CreateJokes < ActiveRecord::Migration[5.1]
  def change
    create_table :jokes do |t|
      t.string :canihaz_id

      t.timestamps
    end
  end
end
