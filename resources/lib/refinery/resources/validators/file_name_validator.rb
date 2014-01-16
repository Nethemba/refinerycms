module Refinery
  module Resources
    module Validators
      class FileNameValidator < ActiveModel::Validator

        NAME_REG = /\A[\w\_\ \-\.,;\(\)\$]+\z/

        def validate(record)
          unless record.file.nil? || record.file.name =~ NAME_REG
            record.errors[:image] << ::I18n.t('invalid_name',
                                             :scope => 'activerecord.errors.models.refinery/resource')
          end
        end

      end
    end
  end
end
