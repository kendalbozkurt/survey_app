class Survey < ApplicationRecord
  # Relations
  has_many :questions
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  validates :questions, :length => { :minimum => 1 }
  validates :title, presence: true
end
