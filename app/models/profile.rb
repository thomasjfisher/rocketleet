class Profile < ApplicationRecord
  belongs_to :user
  #Allows for profiles to have access to be able to have many listings to purchase and to sell.
  has_many :listings_to_buy, class_name: 'Listing', foreign_key: "buyer_id"
  has_many :listings_to_sell, class_name: 'Listing', foreign_key: "seller_id"
end
