class ChangingDataTypeForSubmissionTime < ActiveRecord::Migration[5.0]
  def change

    change_column :submisions, :submision_time, :date
  end
end
