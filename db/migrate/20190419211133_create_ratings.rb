class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :description
      t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
