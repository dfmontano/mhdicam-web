class Piscina < ApplicationRecord

  before_validation :set_uuid, on: :create

  has_and_belongs_to_many :corridas

  def set_uuid

    self.id = SecureRandom.uuid

  end

end
