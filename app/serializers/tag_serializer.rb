class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :note_tags
end
