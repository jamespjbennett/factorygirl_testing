FactoryGirl.define do
  factory :player do
    name "MyString"
    rating 1
  end
  factory :team do
    name "MyString"
    rating 1
  end
  

  factory :football_player do
    name "Rooney"
    favourite_move "Getting Tackled"
    skills "Shooting"
  end
end