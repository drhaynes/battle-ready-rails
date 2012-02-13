# When we user the ':user' symbol, Factory Girl will simulate the User model.
FactoryGirl.define do 
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
end

