class AddingDefaultResponsForGradedAttributedOnSubmision < ActiveRecord::Migration[5.0]
  def change
    change_column :submisions, :graded, :boolean, default: false
  end
end
