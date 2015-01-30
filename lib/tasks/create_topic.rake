task create_topic: :environment do
  5.times do
    Topic.create!({
      title: Faker::Commerce.department,
      initial_post: Faker::Company.catch_phrase,
    })
  end
end