class OrderDetail < ApplicationRecord
  enum making_status: { not_started: 0, waiting: 1, making: 2, completed: 3 }

  belongs_to :item
  belongs_to :order

end
