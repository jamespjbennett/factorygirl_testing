class Player < ApplicationRecord
	belongs_to :team
	validates :name, :rating, presence: true
end
