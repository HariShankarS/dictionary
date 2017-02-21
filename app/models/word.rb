class Word < ApplicationRecord
  has_many :meanings, inverse_of: :word
  has_many :examples, inverse_of: :word
  validates_uniqueness_of :term
  validates_presence_of :term
  validates_presence_of :meanings
  accepts_nested_attributes_for :meanings, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :examples, reject_if: :all_blank, allow_destroy: true
end
