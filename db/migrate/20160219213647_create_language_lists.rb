class CreateLanguageLists < ActiveRecord::Migration
  def change
    create_table :language_lists do |t|
      t.string :code
      t.string :name
      t.string :flag

      t.timestamps null: false
    end
  end
end
