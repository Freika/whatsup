FactoryGirl.define do
  factory :task do
    content "MyText"
    user_id 1
    status 1
    estimated_hours 1
    spent_hours 1
  end
end
