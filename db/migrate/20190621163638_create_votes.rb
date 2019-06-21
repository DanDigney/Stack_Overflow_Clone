class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :user_id, null: false
      t.integer :value, null: false

      # Like the idea, don't like the added math
      # Probably come back around to it
      # t.boolean :liked, allow_nil: true, default: nil

      # Polymorphic set up
      t.integer :votable_id, null: false
      t.string :votable_type, null: false

      t.timestamps
    end
  end
end
