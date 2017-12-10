class CreateBalanceados < ActiveRecord::Migration[5.1]
  def change
    create_table :balanceados, id: :uuid do |t|
      t.string :marca
      t.string :tipo
      t.integer :precio
      t.integer :presentacion
      t.integer :stock

      t.timestamps
    end
  end
end
