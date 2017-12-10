class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :corridas, :piscinas do |t|
      t.index [:corrida_id, :piscina_id]
      t.index [:piscina_id, :corrida_id]
    end
  end
end
