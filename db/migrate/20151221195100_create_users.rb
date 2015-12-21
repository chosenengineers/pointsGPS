class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.float :latitude
      t.float :longitutude
      t.string :address
      t.string :title

      t.timestamps
    end
  end
end
