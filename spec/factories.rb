# This will guess the User class
FactoryBot.define do
  factory :user do
    email { "test@example.com" }
    password  { "password" }
  end
end