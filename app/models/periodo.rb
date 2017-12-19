class Periodo < ApplicationRecord

  before_validation :set_uuid, on: :create

  belongs_to :piscina, foreign_key: "id_piscina"
  belongs_to :corrida, foreign_key: "id_corrida"
  has_many :gastos_balanceados


  def set_uuid

    self.id = SecureRandom.uuid

  end

end
