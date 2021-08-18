FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@bar.com" }
    password { 'foobar' }
  end
end