class Team < ActiveRecord::Base

	validates :name, presence: true

	has_many :mons
	belongs_to :trainer
end
