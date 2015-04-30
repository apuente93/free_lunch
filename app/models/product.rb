class Product < ActiveRecord::Base
  belongs_to :store
  
  has_many :use
  has_many :recipe, through: :use
  
  has_many :sell
  has_many :store, through: :sell
  
  has_many :place
  has_many :order, through: :place
  has_one :user, through: :place
  
  validates :store_id, presence: true
  validates :name, presence: true, length: {maximum: 200},
            uniqueness: {case_sensitive: false}
  validates :category, presence: true, length: {maximum: 30}
end
