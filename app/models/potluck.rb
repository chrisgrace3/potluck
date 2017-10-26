class Potluck < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, :location, :starts_at, presence: true

  belongs_to :host, foreign_key: :hoster_id, class_name: :User
  has_many :attendings


end
