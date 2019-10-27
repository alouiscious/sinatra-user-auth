class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |create_table|
      t.string :name
      t.string :email
      t.string :password
    end
  end
end