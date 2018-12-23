class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :short_desc
      t.text :long_desc
      t.string :grade_level
      t.string :subject
      t.text :lesson_text
      t.string :question_one
      t.string :question_two
      t.string :question_three
      t.string :question_four
      t.string :question_five

      t.timestamps
    end
  end
end
