FactoryGirl.define do
  factory :contribution do
    candidate
		user
		amount rand(1..100)
  end

end
