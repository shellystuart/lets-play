require "faker"

FactoryGirl.define do
  factory :activity do
    title { Faker::Hipster.sentence }
    description { Faker::Hipster.paragraph }
    instructions { Faker::Hipster.paragraph }
    image "color-bag-mixing.jpg"
    url { Faker::Internet.url }
  end
end
