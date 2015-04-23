class Store < ActiveRecord::Base
  has_many :products, dependent: :destroy
  acts_as_mappable :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}
  has_many :sell
  
  has_many :place
  has_many :product, through: :place
  has_many :order, through: :place
  has_one :user, through: :place
  
  validates :name, presence: true, length: {maximum: 30},
            uniqueness: {case_sensitive: false}
  validates :address, presence: true, length: {maximum: 50}
end
