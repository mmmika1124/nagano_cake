class Item < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :destroy

  validates :name, presence: true
  validates :image_id, presence: true
  validates :introduction, presence: true
  validates :price, presence: true

  def with_tax_price
    (price * 1.1).floor
  end

end
