class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :nominees, class_name: "Candidate"
         
	has_many :pledges
	has_many :candidates, through: :pledges

	has_many :contributions
	has_many :candidates, through: :contributions

	def candidates_pledged_to 
		self.pledges.collect { |pledge| pledge.candidate_id}
	end

end
