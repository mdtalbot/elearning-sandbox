class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :question, :lesson_id
  belongs_to :lesson
end
