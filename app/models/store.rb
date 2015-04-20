class Store < ActiveRecord::Base
  #acts_as_mappable :auto_geocode=>{:field=>:zip_code, :error_message=>'Could not geocode zip_code'}
  validates :name, presence: true, length: {maximum: 30},
            uniqueness: {case_sensitive: false}
  validates :zip_code, presence: true, length: {is: 5}
end
