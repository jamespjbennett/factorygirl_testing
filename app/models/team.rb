class Team < ApplicationRecord

	has_many :players
	validates :name, :rating, presence: true
end
