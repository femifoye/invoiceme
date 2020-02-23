class Invoice < ApplicationRecord
    belongs_to :user
    serialize :entries, Array
end
