class Book < ApplicationRecord

    
    attribute :price, :number, default: 0

    belongs_to :usr
    belongs_to :destnation



end
