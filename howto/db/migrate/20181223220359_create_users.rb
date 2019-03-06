class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login_name
      t.string :password_digest
      t.string :name
      t.string :email
      t.string :section_name
      t.boolean :is_teacher, default: false
      t.boolean :is_admin, default: false

      t.timestamps
    end
  end
end
