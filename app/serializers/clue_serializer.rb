class ClueSerializer < ActiveModel::Serializer
  attributes :id, :hint
  belongs_to :puzzle 
end
