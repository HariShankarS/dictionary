class Word < ApplicationRecord
  has_many :meanings, inverse_of: :word
  has_many :examples, inverse_of: :word
  accepts_nested_attributes_for :meanings, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :examples, reject_if: :all_blank, allow_destroy: true
  require 'csv'
end
