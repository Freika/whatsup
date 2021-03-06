FactoryGirl.define do
  factory :user do
    username { FFaker::Internet.user_name }
    email { FFaker::Internet.email }
    password { SecureRandom.hex(8) }
  end
end
