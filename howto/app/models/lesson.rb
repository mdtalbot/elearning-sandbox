class Lesson < ApplicationRecord
  has_many :exercises
  has_many :lesson_texts
  has_many :lesson_vital_facts
  has_many :opinions
  has_many :oral_args
end
