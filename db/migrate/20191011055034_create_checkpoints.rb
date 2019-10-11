class CreateCheckpoints < ActiveRecord::Migration[6.0]
  def change
    create_table :checkpoints do |t|
      t.references :parent, polymorphic: true, null: false
      t.string :title, null: false
      t.string :description
      t.references :place, foreign_key: true
      t.integer :index

      t.timestamps
    end
  end
end
