class CreateGastosFertilizantes < ActiveRecord::Migration[5.1]
  def change
    create_table :gastos_fertilizantes, id: :uuid do |t|
      t.integer :cantidad
      t.string :id_fertilizante
      t.string :id_periodo
      t.integer :precioUnit
      t.integer :subtital

      t.timestamps
    end

    add_index :gastos_fertilizantes, :id_periodo
    add_foreign_key :gastos_fertilizantes, :periodos

  end
end
