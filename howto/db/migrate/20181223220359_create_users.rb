class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :login_name
      t.string :password_digest
      t.string :name
      t.string :email
      t.boolean :is_teacher
      t.boolean :is_admin

      t.timestamps
    end
  end
end
