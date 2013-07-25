class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  belongs_to :user
  belongs_to :address

  def total
    order_items.map(&:subtotal).sum
  end
end
