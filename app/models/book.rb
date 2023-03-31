class Book < ApplicationRecord

    
    atttribute :price, :number

    belongs_to :usr
    belongs_to :destnation



end
