class AddPivotalToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :pivotal, :string
  end
end
