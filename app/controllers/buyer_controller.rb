class BuyerController < ApplicationController
  def page
    #find the listing they are buying
    #update buyer id of listing

    @listing = Listing.find(params[:listing])
    #finding who the buyer is. It will get their current profile id and match them as the buyer.
    @listing.buyer_id = current_user.profile.id
    @listing.save
  end
end
