class Store < ActiveRecord::Base
  has_many :products, dependent: :destroy
  acts_as_mappable :auto_geocode=>{:field=>:address, :error_message=>'Could not geocode address'}
  
  validates :name, presence: true, length: {maximum: 30}
  validates :address, presence: true, length: {maximum: 100},
            uniqueness: {case_sensitive: false}
end