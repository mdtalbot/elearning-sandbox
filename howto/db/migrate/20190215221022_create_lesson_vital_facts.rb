class CreateLessonVitalFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_vital_facts do |t|
      t.string :decision_date
      t.string :decision
      t.string :plaintiff
      t.string :defendant
      t.string :plaintiff_att
      t.string :defendant_att
      t.string :justices, array: true
      t.references :lesson, foreign_key: true

      t.timestamps
    end
    add_index :lesson_vital_facts, :justices
  end
end
