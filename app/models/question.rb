class Question < ApplicationRecord
  belongs_to :subject
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: proc { |attributes| attributes['q_answer'].blank? }, allow_destroy: true
end
