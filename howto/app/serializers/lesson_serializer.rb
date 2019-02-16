class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :front_tagline, :page_tagline, :header_img_url
  has_many :lesson_vital_facts, :lesson_oral_args, :opinions, :exercises
end
