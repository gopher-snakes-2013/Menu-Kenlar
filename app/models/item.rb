class Item < ActiveRecord::Base
  belongs_to :menu
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
end
