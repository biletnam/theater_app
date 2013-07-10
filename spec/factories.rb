FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "email#{n}@factory.com" }
    password "foobar"
    password_confirmation "foobar"
  end

  factory :movie do
    name "The Godfather"
  end

  factory :showtime do
    date "2013-01-01"
    start_time "12:30:00"
    movie
  end

  factory :seat do
    row "1"
    chair_letter "A"
    showtime

    factory :reserved_seat do
      user
    end
  end

end