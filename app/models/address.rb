class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders

  validates :line1, :city, :state, :zip, presence: true
  validates :state, format: {with: /[A-Z]{2}/}
  validates :zip, format: {with: /\d{5}/}

  def to_s
    [line1, line2, "#{city}, #{state} #{zip}"].compact.join(", ")
  end
end
