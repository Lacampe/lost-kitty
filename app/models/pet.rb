class Pet < ApplicationRecord
  CATEGORIES = ['cat', 'dog', 'shark', 'human']
  validates :name, presence:true
  validates :category, inclusion: { in: CATEGORIES }

  def self.categories
    return CATEGORIES
  end

end
