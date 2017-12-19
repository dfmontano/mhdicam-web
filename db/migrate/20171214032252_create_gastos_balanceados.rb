class CreateGastosBalanceados < ActiveRecord::Migration[5.1]
  def change
    create_table :gastos_balanceados, id: :uuid do |t|
      t.string :id_balanceado
      t.string :id_periodo
      t.integer :cantidad
      t.integer :precioKg
      t.integer :subtotal

      t.timestamps
    end

    add_index :gastos_balanceados, :id_periodo
    add_foreign_key :gastos_balanceados, :periodos

  end
end
