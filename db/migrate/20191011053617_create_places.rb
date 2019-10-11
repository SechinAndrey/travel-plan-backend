class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :title, null: false
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
