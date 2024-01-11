FactoryBot.define do
  factory :search do
    search_query { "Test Query" }
    association :user
  end
end