class UserArtistsController < ApplicationController

  def index
  # Get all user's artists from user_artists table
  # by finding all artist_id that is with user_id
    @artists = User_Artist.find(params[:user_id]).all

  # Match artist_id from user_artists table to id in artists table
  # to get name from artist table

  # List all artists by name with link to artists#show

end
