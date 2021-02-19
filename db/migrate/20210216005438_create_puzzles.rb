class CreatePuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :puzzles do |t|
      t.string :title
      t.string :location_name
      t.float :latitude
      t.float :longitude
      t.string :difficulty
      t.float :radius_limit, default: 0.04
      t.string :preview_image
      t.string :solution_image

      t.timestamps
    end
  end
end
