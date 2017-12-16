class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.references :joke, foreign_key: true
      t.integer :type

      t.timestamps
    end
  end
end
