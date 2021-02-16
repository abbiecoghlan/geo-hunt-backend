class CreateClues < ActiveRecord::Migration[6.1]
  def change
    create_table :clues do |t|
      t.text :hint
      t.integer :puzzle_id
      t.timestamps
    end
  end
end
