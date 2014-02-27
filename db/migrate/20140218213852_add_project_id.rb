class AddProjectId < ActiveRecord::Migration
  def change
    add_column :commits, :project_id, :integer
    add_column :code_climates, :project_id, :integer
    add_column :pivotal_stories, :project_id, :integer
    add_column :travis, :project_id, :integer
  end
end
