FactoryGirl.define do
  factory :report do
    user

    after(:create) do |report|
      report.teams << FactoryGirl.create(:team)
    end
  end
end
