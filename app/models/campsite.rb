class Campsite < ActiveRecord::Base
  has_many :campers
  has_many :supplies, through: :campers
end
