class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :front_tagline
      t.string :page_tagline
      t.string :header_img_url

      t.timestamps
    end
  end
end
