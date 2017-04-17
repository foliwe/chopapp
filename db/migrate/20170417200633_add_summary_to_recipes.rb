class AddSummaryToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :summary, :text
  end
end
