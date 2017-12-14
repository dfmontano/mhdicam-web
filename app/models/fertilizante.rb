class Fertilizante < ApplicationRecord

  before_validation :set_uuid, on: :create
  before_validation :transform_to_ints, on: :create

  after_find :transform_to_dec
  after_find :precio_unit

  attr_accessor :precioUnit

  def set_uuid

    self.id = SecureRandom.uuid

  end

  def precio_unit

    self.precioUnit = precio / presentacion

  end

  def transform_to_ints

    self.precio = precio * 100

  end

  def transform_to_dec

    self.precio = precio / 100

  end


end
