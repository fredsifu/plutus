module Plutus
  module NoTenancy
    extend ActiveSupport::Concern

    included do
      validates :name, presence: true, uniqueness: { scope: [:target_id, :target_type] }
    end
  end
end
