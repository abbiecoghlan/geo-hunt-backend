class CreateAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :attempts do |t|
      t.string :status
      t.float :time_taken
      t.integer :puzzle_id
      t.integer :user_id
      t.timestamps
    end
  end
end
