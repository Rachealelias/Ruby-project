class User < ActiveRecord::Base
    has_many :games, dependent: :destroy

    # password security
    has_secure_password

    validates :username, presence: true, length: {in: 6..25}
    validates :email, presence: true, uniqueness: true, format: {with: /\A(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))\z/i}
    validates :password, length: {in: 8..25}

    # setup user roles
    enum role: %i(client admin superadmin) 
end
