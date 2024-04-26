class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum type: {
    normal: 'fixed',
    special: 'variable'
  }
end
