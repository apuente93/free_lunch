class Store < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 30},
            uniqueness: {case_sensitive: false}
  validates :zip_code, presence: true, length: {is: 5}
end
