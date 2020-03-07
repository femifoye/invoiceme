class Invoice < ApplicationRecord
    belongs_to :user

    validates :description, presence: true
    validates :to, presence: true
    validates :due, presence: true
    validates :date, presence: true

    serialize :entries, Array
end
