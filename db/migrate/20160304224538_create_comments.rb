class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.date :CreationDate
      t.date :lastUpdated

      t.timestamps null: false
    end
  end
end
