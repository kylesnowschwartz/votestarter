FactoryGirl.define do
  factory :candidate do
    name { Faker::Name.name }
		affiliation { Faker::Team.name }
		platform { Faker::Company.catch_phrase }
		pledge_goal { rand(10..200) }
		fundraising_goal { rand(100..10000) }
		association :nominator, factory: :user
  end
end
