module Refinery
  module Images
    module Validators
      class ImageNameValidator < ActiveModel::Validator

        NAME_REG = /\A[\w\_\ \-\.,;\(\)\$]+\z/

        def validate(record)
          unless record.image.nil? || record.image.name =~ NAME_REG
            record.errors[:image] << ::I18n.t('invalid_name',
                                             :scope => 'activerecord.errors.models.refinery/image')
          end
        end

      end
    end
  end
end
