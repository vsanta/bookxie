class CreateBook < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :isbn, null: false, unique: true
      t.string :author, null: false
      t.text :synopsis
      t.timestamps
    end
  end

end
