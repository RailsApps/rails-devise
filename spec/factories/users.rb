FactoryGirl.define do
  factory :user do
    name "user"
    email "user@example.com"
    password "changeme"
   
    trait :admin do
      role :admin
    end
  end

end