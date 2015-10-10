module StatifyModel
  module StatusManager

    extend ActiveSupport::Concern

    included do
      scope :enabled, -> { where(enabled: true) }
      scope :disabled, -> { where(enabled: false) }
    end

    def enable
      update(enabled: true)
    end

    def disable
      update(enabled: false)
    end

    def toggle_status
      enabled? ? disable : enable
    end

    def disabled?
      !enabled?
    end

  end
end
