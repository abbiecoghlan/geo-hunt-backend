class AttemptSerializer < ActiveModel::Serializer
  attributes :id, :status, :time_taken
  belongs_to :puzzle, include_nested_associations: true
  belongs_to :user
end
