class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :First_name
      t.string :Last_name
      t.string :Email
      t.string :Password_digest
      t.boolean :Role

      t.timestamps
    end
  end
end
