class Recipe < ActiveRecord::Base
  has_many :favorites
  has_many :user, through: :favorites
  
  has_many :use
  has_many :product, through: :use
  
  validates :name, presence: true, length: {maximum: 50},
            uniqueness: {case_sensitive: false}
  validates :taste, presence: true, length: {maximum: 30}
end
