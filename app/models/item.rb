class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum item_type: {
    fixed: 'fixed',
    variable: 'variable'
  }
end
