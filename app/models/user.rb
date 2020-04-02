class User < ApplicationRecord
    has_secure_password
    has_many :invoices
    has_many :customers
end