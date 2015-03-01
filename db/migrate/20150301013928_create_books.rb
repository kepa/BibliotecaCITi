class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :category_id
      t.boolean :taken

      t.timestamps
    end
  end
end
