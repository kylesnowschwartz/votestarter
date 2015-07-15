class Candidate < ActiveRecord::Base
	belongs_to :nominator, class_name: "User"
	
	has_many :pledges
	has_many :users, through: :pledges

	has_many :contributions
	has_many :users, through: :contributions

	def total_fundraising
		self.contributions.inject { |total, contribution| total + contribution.amount}
	end

	def total_votes_pledged
		self.pledges.count
	end

	def fundraising_goal_hit?
		total_fundraising >= self.fundraising_goal
	end

	def pledges_goal_hit?
		total_votes_pledged >= self.pledge_goal
	end
	
end
