class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :men_women_clothing_available

  def men_women_clothing_available
    errors.add(:mens_apparel, "must see men's or women's apparel") if !mens_apparel && !womens_apparel
  end
end
