module Archivable
  extend ActiveModel::Callbacks
  extend ActiveSupport::Concern

  included do

    define_model_callbacks :archive

    default_scope {where(deleted: false)}

    def archive
      run_callbacks :archive do
        if respond_to?(:deleted)
          self.deleted = true
          save
        end
      end
    end

    def archived?
      archivable? ? deleted : false
    end

    def archivable?
      respond_to?(:deleted)
    end

  end
end