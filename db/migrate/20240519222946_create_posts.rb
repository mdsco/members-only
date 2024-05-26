class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.timestamps

      t.string :title
      t.text :body
      t.references :author, null: false, foreign_key: { to_table: :users }
    end
  end
end
