FactoryBot.define do
  factory :user do
    name { 'lawrence' }
    email { 'kwaku28@test.com' }
    password { 'password123' }
    password_confirmation { 'password123' }
  end
end
