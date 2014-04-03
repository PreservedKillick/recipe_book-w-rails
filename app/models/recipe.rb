class Recipe < ActiveRecord::Base

  validates :name, :ingredients, :instructions, :presence => true
  has_and_belongs_to_many :tags
end
