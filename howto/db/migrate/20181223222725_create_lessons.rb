class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :short_desc
      t.text :long_desc
      t.string :grade_level
      t.string :subject
      t.string :decided_on
      t.string :decision
      t.string :justices, array: true
      t.string :plaintiff
      t.string :defendant
      t.string :plaintiff_att
      t.string :defendant_att
      t.text :lesson_text_diff_adv
      t.text :lesson_text_diff_int
      t.text :lesson_text_diff_sim
      t.string :oral_arg_link_one
      t.string :oral_arg_link_two
      t.string :oral_arg_text_one
      t.string :oral_arg_text_two
      t.string :question_one
      t.string :question_two
      t.string :question_three
      t.string :question_four
      t.string :question_five

      t.timestamps
    end
    add_index :lessons, :justices
  end
end
