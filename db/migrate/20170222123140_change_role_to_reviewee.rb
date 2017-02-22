class ChangeRoleToReviewee < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :Role, :reviewee
  end
end
