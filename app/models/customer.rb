class Customer < ApplicationRecord
    belongs_to :user

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :address_line_1, presence: true
    validates :postal_code, presence: true
    validates :state, presence: true
    validates :city, presence: true
    validates :country, presence: true
    
end
