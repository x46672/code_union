class CreateTravis < ActiveRecord::Migration
  def change
    create_table :travis do |t|
      t.string :state

      t.timestamps
    end
  end
end
