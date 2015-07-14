FactoryGirl.define do
  factory :candidate do
    name Faker::Name.name
		affiliation Faker::Team.name
		platform Faker::Company.catch_phrase
		user_id 1
  end

end
