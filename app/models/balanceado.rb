class Balanceado < ApplicationRecord

  before_validation :set_uuid, on: :create
  before_validation :transform_to_ints, on: :create

  after_find :transform_to_dec
  after_find :precio_lb

  #Non-persistent attribute
  attr_accessor :precioLibra

  validates :precio, numericality: true
  validates :presentacion, numericality:  true

  def precio_lb

    self.precioLibra = precio / presentacion

  end

  def set_uuid

    self.id = SecureRandom.uuid

  end

  def transform_to_ints

    self.precio = precio * 100

  end

  def transform_to_dec

    self.precio = precio / 100

  end
end
