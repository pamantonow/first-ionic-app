class SessionSerializer < ActiveModel::Serializer
  attributes :id, :title, :speaker, :description
end
