class AddIdPiscinaToPeriodos < ActiveRecord::Migration[5.1]
  def change
    add_column :periodos, :id_piscina, :string
  end
end
