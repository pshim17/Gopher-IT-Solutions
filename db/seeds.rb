# Clear existing records
Ticket.destroy_all

puts "🧹 Cleared all existing tickets..."

# Common IT-related ticket subjects
TICKET_TITLES = [
  "Cannot connect to VPN",
  "Email not syncing on mobile",
  "Forgotten password reset",
  "Software update causing crashes",
  "Printer offline in HR",
  "Access request for staging server",
  "Slow internet in conference room",
  "Broken monitor replacement",
  "New user setup needed",
  "2FA not working after device change",
  "System outage alert",
  "Cannot access Jira project",
  "Google Drive permission issue",
  "Laptop overheating frequently",
  "Slack notifications not appearing",
  "Unable to install software",
  "Blue screen on Windows startup",
  "Zoom audio not working",
  "Wi-Fi keeps dropping",
  "Request for admin rights"
]

# Create 20 realistic tickets
20.times do
  Ticket.create!(
    title: TICKET_TITLES.sample,
    description: [
      Faker::Lorem.sentence(word_count: 10),
      "Steps to reproduce:",
      "1. #{Faker::Hacker.verb} the #{Faker::Hacker.noun}.",
      "2. #{Faker::Hacker.verb} the #{Faker::Hacker.adjective} #{Faker::Hacker.noun}.",
      "Expected result: #{Faker::Hacker.say_something_smart.downcase}.",
      "Actual result: #{Faker::Hacker.ingverb.capitalize} failed unexpectedly."
    ].join("\n"),
    status: Ticket.statuses.keys.sample
  )
end

puts "✅ Created 20 sample IT-related tickets"