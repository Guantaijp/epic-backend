class Book < ApplicationRecord

    attribute :price

    belongs_to :usr
    belongs_to :destnation



end
