class ChangeStateInTravis < ActiveRecord::Migration
  def change
    change_column :travis, :state, :integer
  end
end
