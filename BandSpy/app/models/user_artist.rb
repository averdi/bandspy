class UserArtist < ActiveRecord::Base
  has_many :users
  has_many :artists
end
