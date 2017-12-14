class Desinfectante < ApplicationRecord

  before_validation :set_uuid, on: :create



  def set_uuid

    self.id = SecureRandom.uuid

  end

end
