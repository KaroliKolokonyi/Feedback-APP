class CreateSubmisions < ActiveRecord::Migration[5.0]
  def change
    create_table :submisions do |t|
      t.integer :user_id
      t.text :submision
      t.datetime :submision_time
      t.boolean :graded

      t.timestamps
    end
  end
end
