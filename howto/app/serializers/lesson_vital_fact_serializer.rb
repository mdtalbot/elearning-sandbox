class LessonVitalFactSerializer < ActiveModel::Serializer
  attributes :id, :decision_date, :decision, :plaintiff, :defendant, :plaintiff_att, :defendant_att, :justices, :lesson_id
  belongs_to :lesson
end
