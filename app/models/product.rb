class Product < ActiveRecord::Base
  has_many :use
  has_many :recipe, through: :use
  
  has_many :sell
  has_many :store, through: :sell
  
  has_many :place
  has_many :order, through: :place
  has_one :store, through: :place
  has_one :user, through: :place
  
  validates :name, presence: true, length: {maximum: 50},
            uniqueness: {case_sensitive: false}
  validates :category, presence: true, length: {maximum: 30}
end
