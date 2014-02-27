class AddPicToCommits < ActiveRecord::Migration
  def change
    add_column :commits, :pic, :string
  end
end
