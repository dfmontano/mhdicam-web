class GastosFertilizante < ApplicationRecord

  belongs_to :periodo

  before_validation :set_uuid, on: :create

  def set_uuid

    self.id = SecureRandom.uuid

  end

end
