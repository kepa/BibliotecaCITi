class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.string :name
      t.string :email
      t.datetime :due_date
      t.integer :book_id

      t.timestamps
    end
  end
end
