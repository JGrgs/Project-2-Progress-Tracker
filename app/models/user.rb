class User < ApplicationRecord
    has_secure_password
    has_many :images, dependent: :destroy
    validates :name, presence: true
    validates :email, presence:true
    validates :email, uniqueness: true
    validates :password, length: { in: 6..20 }
end
