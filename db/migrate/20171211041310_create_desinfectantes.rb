class CreateDesinfectantes < ActiveRecord::Migration[5.1]
  def change
    create_table :desinfectantes, id: :uuid do |t|
      t.string :marca
      t.string :tipo
      t.integer :precio
      t.integer :presentacion
      t.integer :stock
      t.boolean :liquido

      t.timestamps
    end
  end
end
