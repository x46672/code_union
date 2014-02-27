class CreatePivotalStory < ActiveRecord::Migration
  def change
    create_table :pivotal_stories do |t|
      t.string :story_name
      t.string :current_state
      t.string :story_owner_id

      t.timestamps
    end
  end
end
