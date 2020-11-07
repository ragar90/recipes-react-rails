class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
end
