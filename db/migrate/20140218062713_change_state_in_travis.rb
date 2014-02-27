class ChangeStateInTravis < ActiveRecord::Migration
  def change
    remove_column :travis, :state
    add_column :travis, :state, :integer
  end
end
