class ApplicationController < ActionController::Base
    #Making sure to authenticate a user beofre they go onto the site and have access to anything. Below if it is a new user, they will be authenticated. If it is a new account, it will direct them to create a new profile. If they are a current sure, they will not. They will see their profile page and items they have bought and or ave listed.
    before_action :authenticate_user!

    def after_sign_in_path_for(profile)

        if(current_user.profile)
            new_listing_path
        else
            new_profile_path || root_path
        end
    end

end
