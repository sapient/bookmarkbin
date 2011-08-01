class AddStubToUser < ActiveRecord::Migration
  def change
    add_column :users, :stub, :string
  end
end
