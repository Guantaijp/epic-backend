class Book < ApplicationRecord

    attribute :price, :integer, default: 0

    belongs_to :usr
    belongs_to :destnation



end
