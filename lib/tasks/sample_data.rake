namespace :db do
  desc "Fill database with sample users"
  task populate: :environment do
    Rake::Task['db:reset'].invoke

    # Create the first user, and make them an admin
    User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    admin.toggle!(:admin)

    # Create the rest of the masses
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@example.com"
      pwd = "password"
      User.create!(name: name, email: email, password: pwd, 
                   password_confirmation: pwd)
    end
  end
end
