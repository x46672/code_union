class CreateCodeClimates < ActiveRecord::Migration
  def change
    create_table :code_climates do |t|

      t.timestamps
    end
  end
end
