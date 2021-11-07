class UsersController < ApplicationController
    # Find a user in the db using the user id from the session hash 
    # Return the user as a JSON object
    def show 
        #byebug
        user = User.find(session[:user_id])
        render json: user
    end
end
