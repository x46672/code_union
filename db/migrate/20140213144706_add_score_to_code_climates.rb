class AddScoreToCodeClimates < ActiveRecord::Migration
  def change
    add_column :code_climates, :score, :string
  end
end
