class AddOralArgsToLessons < ActiveRecord::Migration[5.2]
  def change
        enable_extension "hstore"
        add_column :lessons, :oral_args, :hstore
  end
end
