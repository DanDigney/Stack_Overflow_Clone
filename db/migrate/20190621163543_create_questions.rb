class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.string :content, null: false
      t.boolean :best_answer?, default: false

      t.timestamps
    end
  end
end
