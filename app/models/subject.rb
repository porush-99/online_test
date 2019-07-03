class Subject < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, reject_if: proc { |attributes| attributes['title'].blank? }, allow_destroy: true
end
