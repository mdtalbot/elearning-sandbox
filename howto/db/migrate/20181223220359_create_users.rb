class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.boolean :is_teacher
      t.boolean :is_admin

      t.timestamps
    end
  end
end
