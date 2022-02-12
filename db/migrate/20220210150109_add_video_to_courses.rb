class AddVideoToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :video, :string
  end
end
