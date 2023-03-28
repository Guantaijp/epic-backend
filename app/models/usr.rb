class Usr < ApplicationRecord
has_many :books, dependent: :destroy
has_many :destnations, through: :books


    has_secure_password
    validates :password, presence: true

    validates :name, presence: true, uniqueness: true
end
