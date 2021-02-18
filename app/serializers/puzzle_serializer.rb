class PuzzleSerializer < ActiveModel::Serializer
  attributes :id, :title, :location_name, :latitude, :longitude, :difficulty, :radius_limit
  has_many :clues

end
