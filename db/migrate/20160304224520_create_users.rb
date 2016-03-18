class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :skpUsername
      t.string :picture
      t.string :description

      t.timestamps null: false
    end
  end
end
