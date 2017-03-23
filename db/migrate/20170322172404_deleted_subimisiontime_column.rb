class DeletedSubimisiontimeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :submisions, :submision_time, :date
  end
end
