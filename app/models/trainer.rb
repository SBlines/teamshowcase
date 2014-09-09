class Trainer < ActiveRecord::Base

	validates :name, presence: true

	has_many :teams
	has_many :mons, through: :teams
end
