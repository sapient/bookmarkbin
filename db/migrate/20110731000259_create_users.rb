class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :confirmation_token
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
