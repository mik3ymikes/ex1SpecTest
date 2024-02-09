FactoryBot.define do
  factory :article do
    title {Faker::Book.title }
    content { Faker::Lorem.paragraphs(number: 50..100).join('\n\n') }

    
  end
end
