class EntriesSerializer < ActiveModel::Serializer
  attributes :id, :track_id, :date, :note, :quantity
end
