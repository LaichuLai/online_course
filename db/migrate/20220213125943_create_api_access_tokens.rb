class CreateApiAccessTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :api_access_tokens do |t|
      t.integer :admin_id
      t.string :key

      t.timestamps
    end
  end
end
