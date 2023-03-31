class Book < ApplicationRecord

    attribute :price, :decimal

    belongs_to :usr
    belongs_to :destnation



end
