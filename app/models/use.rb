class Use < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :product
  validates :name, presence: true, length: {maximum: 30}
end
