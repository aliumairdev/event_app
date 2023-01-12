FactoryBot.define do
  factory :event do
    title { "sample title" }
    description  { "sample description" }
    date { Time.now.to_date }
    time { Time.now }
    notify { true }
  end
end
