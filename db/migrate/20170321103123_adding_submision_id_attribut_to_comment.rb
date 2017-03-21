class AddingSubmisionIdAttributToComment < ActiveRecord::Migration[5.0]

  def change
    add_column :comments, :feedback_id, :integer
  end
  
end
