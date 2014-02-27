class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.string :username
      t.string :email
      t.string :date_time
      t.string :message
      t.string :sha
      t.timestamps
    end
  end
end
