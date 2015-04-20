class Recipe < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 50},
            uniqueness: {case_sensitive: false}
  validates :taste, presence: true, length: {maximum: 30}
end
