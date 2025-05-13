require 'rails_helper'

RSpec.describe 'Ticket management', type: :feature do
  before(:each) do
    @t1 = Ticket.create(title: "Ticket 1", description: "Description 1", status: :open)
  end

  it "updates the status of a ticket" do
    visit edit_ticket_path(@t1)

    select "In progress", from: "Status"
    click_button "Update Ticket"

    expect(current_path).to eq(ticket_path(@t1))
    save_and_open_page
    expect(page).to have_content("Status: In progress") 
    # expect(page).to have_content("Ticket was successfully updated.")
  end
end