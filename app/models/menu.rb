class Menu < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end