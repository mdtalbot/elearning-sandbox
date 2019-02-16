class OpinionSerializer < ActiveModel::Serializer
  attributes :id, :link_url, :header_text, :desc_text, :lesson_id
  belongs_to :lesson
end
