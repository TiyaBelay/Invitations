FactoryBot.define do
  factory :event do
    event_type :wedding
    due_date { 30.days.from_now }
    event_name 'T & T Wedding'
  end
end
