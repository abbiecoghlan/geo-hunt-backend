class PuzzleSerializer < ActiveModel::Serializer
  attributes :id, :title, :location_name, :latitude, :longitude, :difficulty, :radius_limit, :preview_image, :solution_image
  has_many :clues

end