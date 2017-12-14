class Vitamina < ApplicationRecord

  before_validation :set_uuid, on: :create

  after_find :precio_unit

  attr_accessor :precioUnit

  def precio_unit

    self.precioUnit = precio / presentacion

  end

  def set_uuid

    self.id = SecureRandom.uuid

  end


end
