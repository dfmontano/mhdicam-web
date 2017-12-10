class CreatePeriodos < ActiveRecord::Migration[5.1]
  def change
    create_table :periodos, id: :uuid do |t|
      t.date :fechaInicio
      t.date :fechaFin
      t.integer :totalCosto
      t.string :id_corrida

      t.timestamps
    end
  end
end
