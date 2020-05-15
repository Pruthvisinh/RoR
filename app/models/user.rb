class User < ApplicationRecord
	has_secure_password
	validates :email, format: {with: /@/, message: "must have @"},uniqueness: true
	validates :name, presence: true, uniqueness: true
end
