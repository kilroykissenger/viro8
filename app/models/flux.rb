class Flux < ActiveRecord::Base
  attr_accessible :score, :party_id, :song_id

  belongs_to :party
  belongs_to :song
end
