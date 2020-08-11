json.extract! listing, :id, :item_name, :category_id, :description, :price, :seller_id, :buyer_id, :profile_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
