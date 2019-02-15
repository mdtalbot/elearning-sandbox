class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.string :link_url
      t.string :header_text
      t.string :desc_text
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
