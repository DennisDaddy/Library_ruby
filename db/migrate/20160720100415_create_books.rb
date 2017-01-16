class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :category
      t.string :author
      t.integer :isbn
      t.string :status

      t.timestamps
    end
  end
end
