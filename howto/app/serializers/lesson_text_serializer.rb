class LessonTextSerializer < ActiveModel::Serializer
  attributes :id, :adv, :int, :sim, :lesson_id
  belongs_to :lesson
end
