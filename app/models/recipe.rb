class Recipe < ActiveRecord::Base

  validates :name, :ingredients, :instructions, :presence => true

end
