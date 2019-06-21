class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.string :content, null: false

      # Polymorphic set up
      t.integer :commentable_id, null: false
      t.string :commentable_type, null: false
      
      t.timestamps
    end
  end
end
