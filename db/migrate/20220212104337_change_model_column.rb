class ChangeModelColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :email
    change_column :orders, :user_id, :integer
    change_column :orders, :course_id, :integer
  end
end
