# spec/features/tickets/new_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a ticket', type: :feature do
  it "allows a user to create a new ticket" do
    visit new_ticket_path

    fill_in "Title", with: "Can't access dashboard"
    fill_in "Description", with: "App crashes when trying to open the dashboard"
    select "Open", from: "Status"
    click_button "Create Ticket"

    expect(page).to have_content("Can't access dashboard")
    expect(page).to have_content("Open")
    expect(page).to have_content("App crashes when trying to open the dashboard")
  end
end