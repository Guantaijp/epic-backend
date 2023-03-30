class Book < ApplicationRecord

    attribute :price, :number

    belongs_to :usr
    belongs_to :destnation



end
