class CreateOralArgs < ActiveRecord::Migration[5.2]
  def change
    create_table :oral_args do |t|
      t.string :link_url
      t.string :header_text
      t.string :desc_text

      t.timestamps
    end
  end
end
