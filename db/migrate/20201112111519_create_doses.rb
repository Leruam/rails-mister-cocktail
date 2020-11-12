class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.text :description
      t.cocktail :references
      t.ingredient :references

      t.timestamps
    end
  end
end
