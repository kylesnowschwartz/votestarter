class User < ActiveRecord::Base
	has_many :pledges
	has_many :candidates, through: :pledges

	def candidates_pledged_to 
		self.pledges.collect { |pledge| pledge.candidate_id}
	end

end
