class CreateLessonTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_texts do |t|
      t.text :adv
      t.text :int
      t.text :sim

      t.timestamps
    end
  end
end
