class Store < ActiveRecord::Base
  has_many :sell
  has_many :product, through: :sell
  
  has_many :place
  has_many :product, through: :place
  has_many :order, through: :place
  has_one :user, through: :place
  
  #acts_as_mappable :auto_geocode=>{:field=>:zip_code, :error_message=>'Could not geocode zip_code'}
  validates :name, presence: true, length: {maximum: 30},
            uniqueness: {case_sensitive: false}
  validates :zip_code, presence: true, length: {is: 5}
end
