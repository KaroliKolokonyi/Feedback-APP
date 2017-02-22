class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :submision_id
      t.text :feedback

      t.timestamps
    end
  end
end
