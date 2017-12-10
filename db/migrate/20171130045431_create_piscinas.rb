class CreatePiscinas < ActiveRecord::Migration[5.1]
  def change
    create_table :piscinas, id: :uuid do |t|
      t.string :nombre
      t.integer :hectareas
      t.boolean :estado

      t.timestamps
    end
  end
end
