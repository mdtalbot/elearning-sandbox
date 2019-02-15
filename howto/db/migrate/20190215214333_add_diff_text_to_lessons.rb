class AddDiffTextToLessons < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    add_column :lessons, :diff_text, :hstore
  end
end
