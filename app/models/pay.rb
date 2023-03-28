class Pay < ApplicationRecord
    belongs_to :book, optional: true
    belongs_to :usr, optional: true
  end
  