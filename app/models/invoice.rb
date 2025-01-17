class Invoice < ApplicationRecord
  belongs_to :user
  
  #invoice form validations
  validates :description, presence: true
  validates :to, presence: true
  validates :due, presence: true
  validates :date, presence: true
  validates :total, presence: true

  serialize :entries, Array
end
