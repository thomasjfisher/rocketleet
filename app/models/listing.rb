class Listing < ApplicationRecord
  #Each listing has many categories
  belongs_to :category
  # belongs_to :profile. Checks optional for a buyer, as some users will not buy an item. WIll only update if they do purchase an item. Attached only one image to a listing.
  belongs_to :buyer, class_name: "Profile", optional: true
  belongs_to :seller, class_name: "Profile"
  has_one_attached :picture
end
