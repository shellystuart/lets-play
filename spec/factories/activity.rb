require "faker"

FactoryGirl.define do
  factory :activity do
    title { Faker::Hipster.sentence }
    description { Faker::Hipster.paragraph }
    instructions { Faker::Hipster.paragraph }
    image Faker::Placeholdit.image("600x400")
    url { Faker::Internet.url }
  end
end
