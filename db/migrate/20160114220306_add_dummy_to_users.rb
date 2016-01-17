class AddDummyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :A, :string
    add_column :users, :B, :string
    add_column :users, :C, :string
    add_column :users, :D, :string
    add_column :users, :E, :string
  end
end
