class Book < ApplicationRecord

    attribute :price, :integer, decimal: true

    belongs_to :usr
    belongs_to :destnation



end
