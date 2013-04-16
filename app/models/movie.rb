class Movie < ActiveRecord::Base
  attr_accessible :active, :cast, :details, :director, :rating, :reviews, :title
  has_and_belongs_to_many :cinemas
  validates :title, :uniqueness => true
end
