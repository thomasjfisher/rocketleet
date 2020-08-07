class Profile < ApplicationRecord
  belongs_to :user
  # has_many :listings self join between profile and listings
  has_many :listings_to_buy, class_name: 'Listing', foreign_key: "buyer_id"
  has_many :listings_to_sell, class_name: 'Listing', foreign_key: "seller_id"
end
