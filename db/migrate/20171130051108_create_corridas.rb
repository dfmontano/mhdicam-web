class CreateCorridas < ActiveRecord::Migration[5.1]
  def change
    create_table :corridas, id: :uuid do |t|
      t.date :fechaInicio
      t.date :fechaFin
      t.boolean :estado

      t.timestamps
    end
  end
end
