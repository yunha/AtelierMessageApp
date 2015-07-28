class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
    	t.string :password_digest
    	t.string :password_salt

      t.timestamps null: false
    end
  end
end
