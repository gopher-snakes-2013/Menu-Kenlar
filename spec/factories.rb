FactoryGirl.define do
  factory :menu do
    name "breakfast"
  end

  factory :item do
    name "shit"
    price 1
    menu
  end
end