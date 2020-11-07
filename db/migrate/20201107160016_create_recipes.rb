class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :image
      t.string :description
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end