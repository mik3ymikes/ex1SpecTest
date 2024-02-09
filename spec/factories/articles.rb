FactoryBot.define do
  factory :article do
    title {Faker::Book.title(specifier:5..20) }
    Content {Faker::Lorem.paragraphs(specifier: 50..100)}

    
  end
end
