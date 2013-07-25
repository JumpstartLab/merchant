class Product < ActiveRecord::Base
  validates_numericality_of :price

  def price=(input)
    input.delete!("$")
    super
  end
end
