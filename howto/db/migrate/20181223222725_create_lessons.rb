class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :short_desc
      t.text :long_desc
      t.string :grade_level
      t.string :subject

      t.timestamps
    end
  end
end
