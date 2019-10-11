class CreateTravelPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :travel_plans do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.string :visibility, null: false, default: 'private'
      t.decimal :price
      t.string :curency

      t.timestamps
    end
  end
end
