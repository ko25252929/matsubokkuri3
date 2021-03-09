FactoryBot.define do
  factory :tweet do
    day               { '2021/03/26' }
    title             { '神割崎キャンプ場' }
    text              { '天気が良い'}
    
    association :user

    after(:build) do |tweet|
      tweet.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
