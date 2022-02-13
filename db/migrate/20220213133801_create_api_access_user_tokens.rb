class CreateApiAccessUserTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :api_access_user_tokens do |t|
      t.integer :user_id
      t.string :key

      t.timestamps
    end
  end
end
