class Attending < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user, foreign_key: :attendee_id
  belongs_to :potluck
end
