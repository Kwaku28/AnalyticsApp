FactoryBot.define do
  factory :search_log do
    association :user, factory: :user
    search_query { 'test query' }
  end
end
