class Destnation < ApplicationRecord
  has_many :books, dependent: :destroy
  has_many :usrs, through: :books

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
