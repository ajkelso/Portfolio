class User < ApplicationRecord
    has_secure_password
    has_many :folios
    has_many :stocks, through: :folios
end
