module StatifyModel
  module HasStatus
    extend ActiveSupport::Concern

    module ClassMethods
      def has_status
        include StatifyModel::StatusManager
      end
    end

  end
end

ActiveRecord::Base.send :include, StatifyModel::HasStatus
