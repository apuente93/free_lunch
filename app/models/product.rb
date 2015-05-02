class Product < ActiveRecord::Base
  belongs_to :store
  
  has_many :orders
  has_many :users, :through => :orders
  
  validates :store_id, presence: true
  validates :name, presence: true, length: {maximum: 200}
  validates :category, presence: true, length: {maximum: 30}
end
