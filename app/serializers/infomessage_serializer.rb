class InfomessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :display_time, :priority, :updated_at, :created_at
end
