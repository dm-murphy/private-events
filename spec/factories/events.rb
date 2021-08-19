FactoryBot.define do
  factory :event do
    date { '2022-02-02 01:00:00 UTC'  }
  end
  trait :skip_validate do
    to_create {|instance| instance.save(validate: false)}
  end
end