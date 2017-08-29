class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :title, null: false
      t.boolean :completed
      t.string :author, null: false

      t.timestamps
    end
  end
end
