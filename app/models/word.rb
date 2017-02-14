class Word < ApplicationRecord
  has_many :meanings, inverse_of: :word
  accepts_nested_attributes_for :meanings, reject_if: :all_blank, allow_destroy: true
end
