class Cinema < ActiveRecord::Base
  attr_accessible :active, :address, :name, :phone
  validates :name, :uniqueness => true
  has_and_belongs_to_many :movies
end
