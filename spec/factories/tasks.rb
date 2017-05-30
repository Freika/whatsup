FactoryGirl.define do
  factory :task do
    content "MyText"
    user
    status 1
    estimated_hours 1
    spent_hours 1

    report
  end
end
