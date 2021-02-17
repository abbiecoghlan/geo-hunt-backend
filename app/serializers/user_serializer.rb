class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :age
  has_many :attempts
end
