class AddTravisCiToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :travis_ci, :string
  end
end
