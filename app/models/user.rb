class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :pledges
	has_many :candidates, through: :pledges

	def candidates_pledged_to 
		self.pledges.collect { |pledge| pledge.candidate_id}
	end

end
