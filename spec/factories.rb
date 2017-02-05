
FactoryGirl.define do
  factory :team do
    name {  Faker::Name.name }
    rating {Faker::Number.number(2)}
  end
  factory :player do
    association :team
    name { Faker::Name.name   }
    rating { Faker::Number.number(2) }
  end

  factory :invalid_team do
  	name nil
  end

  factory :invalid_player do
  	name nil
  end
end
  


