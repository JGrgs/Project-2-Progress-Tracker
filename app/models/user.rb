class User < ApplicationRecord
    has_secure_password
    has_many :images, dependent: :destroy
    validates :name, presence: true
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence:true
    validates :email, uniqueness: true
    validates :password, length: { in: 6..20 }

    def self.search(search)                                                                                               #Search method to declare which fields the method should search for matching queries.
        where("name ILIKE ? OR username ILIKE ?", "%#{search}%", "%#{search}%")     #Used ILIKE(postgres/heroku friendly) instead of LIKE (sql)
      end

end
