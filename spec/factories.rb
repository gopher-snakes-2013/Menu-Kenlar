FactoryGirl.define do
  factory :menu do
    name "breakfast#{Time.now.to_s}"
  end

  factory :item do
    name "shit#{Time.now.to_s}"
    price 1
    menu
  end
end