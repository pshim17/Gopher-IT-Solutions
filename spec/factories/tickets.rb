FactoryBot.define do
  factory :ticket do
    title { Faker::Hacker.say_something_smart.capitalize }
    description do
      [
        Faker::Lorem.sentence(word_count: 10),
        "Steps to reproduce:",
        "1. #{Faker::Hacker.verb} the #{Faker::Hacker.noun}.",
        "2. #{Faker::Hacker.verb} the #{Faker::Hacker.adjective} #{Faker::Hacker.noun}.",
        "Expected result: #{Faker::Hacker.say_something_smart.downcase}.",
        "Actual result: #{Faker::Hacker.ingverb.capitalize} failed unexpectedly."
      ].join("\n")
    end
    status { Ticket.statuses.keys.sample }
  end
end