class Question < ApplicationRecord
  belongs_to :survey, required: true
  has_many :question_options
  has_many :answers

  accepts_nested_attributes_for :question_options, :allow_destroy => true
  accepts_nested_attributes_for :answers

  validates :question, presence: true
end
