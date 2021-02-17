class AttemptSerializer < ActiveModel::Serializer
  attributes :id, :status, :time_taken, :clues
  belongs_to :puzzle
  belongs_to :user

  def clues
    object.puzzle.clues
  end
end
