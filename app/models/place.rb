class Place < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  belongs_to :store
  belongs_to :product
end
