require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating 25 speakers"

25.times {
  Speaker.create!(
    name: Faker::Name.unique.name,
    title: "Founder, #{Faker::ProgrammingLanguage.name}",
    bio: Faker::Company.bs,
    image_filename: "placeholder.png"
  )
}
puts "Finished creating speakers"

puts "Creating 25 talks"

25.times {
  Talk.create!(
    title: Faker::Book.unique.title,
    location: Faker::Address.community,
    start_time: Faker::Time.between_dates(from: Date.new(2023, 10, 0o5), to: Date.new(2023, 10, 0o6), period: :morning),
    talk_format: %w[keynote session workshop panel social].sample,
    talk_track: %w[technical community career].sample,
    duration: [30, 45, 60].sample,
    description: Faker::Movies::Hobbit.quote
  )
}
puts "Finished creating talks"

puts "Creating 25 speakers_talks relationships"

25.times {
  SpeakerTalk.create!(
    speaker_id: Speaker.ids.sample,
    talk_id: Talk.ids.sample
  )
}
puts "Finished creating speakers_talks relationships"
