class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :category
      t.decimal :price
      t.integer :currency
      t.boolean :available
      t.integer :duration
      t.string :friendly_id

      t.timestamps
    end
  end
end
