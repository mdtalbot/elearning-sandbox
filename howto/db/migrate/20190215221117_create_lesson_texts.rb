class CreateLessonTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_texts do |t|
      t.text :adv
      t.text :int
      t.text :sim
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
