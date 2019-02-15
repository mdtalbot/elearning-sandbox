class AddVitalStatsToLessons < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    add_column :lessons, :vital_stats, :hstore
  end
end
