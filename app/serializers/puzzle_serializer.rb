class PuzzleSerializer < ActiveModel::Serializer
  attributes :id, :title, :location_name, :latitude, :longitude, :difficulty
  has_many :clues

end
