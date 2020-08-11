class Category < ApplicationRecord
    #Each category has many listings
    has_many :listings
end
