# When we user the ':user' symbol, Factory Girl will simulate the User model.
FactoryGirl.define do 
  factory :user do
    name "Bob Loggins"
    email "bloggins@logtouch.org"
    password "foobar"
    password_confirmation "foobar"
  end
end

