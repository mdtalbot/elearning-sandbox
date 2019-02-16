class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :front_tagline, :page_tagline, :header_img_url
  has_many :lesson_vital_facts
  has_many :oral_args
  has_many :opinions
  has_many :exercises
  has_many :lesson_texts
end
