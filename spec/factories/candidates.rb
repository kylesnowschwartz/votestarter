FactoryGirl.define do
  factory :candidate do
    name Faker::Name.name
		affiliation Faker::Team.name
		platform Faker::Company.catch_phrase
		association :nominator_id, factory: user
  end

end
