class Order < ActiveRecord::Base
    has_many :place
    has_many :product, through: :place
    has_one :store, through: :place
    has_one :user, through: :place
end