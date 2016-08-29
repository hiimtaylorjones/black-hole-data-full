FactoryGirl.def do
  factory :post do
    title Faker::Name.first_name
    body Faker::Lorem.paragraph(5)
    published true

    factory :unpublished_post do
      published false
    end
  end
end
