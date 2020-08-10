class BuyerController < ApplicationController
  def page
    #find the listing they are buying
    #update buyer id of listing

    @listing = Listing.find(params[:listing])

    @listing.buyer_id = current_user.profile.id
    @listing.save
  end
end
