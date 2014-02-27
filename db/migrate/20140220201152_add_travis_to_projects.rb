class AddTravisToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :travis, :string
  end
end
