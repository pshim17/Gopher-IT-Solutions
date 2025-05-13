require 'rails_helper'

RSpec.describe "Delete a ticket", type: :feature do 
  before(:each) do 
    @t1 = Ticket.create(title: "Ticket 1", description: "Description 1", status: :open)
    @t2 = Ticket.create(title: "Ticket 2", description: "Description 2", status: :in_progress)
  end

  it "can delete a ticket" do
    visit tickets_path

    within("#ticket-#{@t1.id}") do
      expect(page).to have_text(@t1.title)
      click_on "Delete"
    end

    expect(current_path).to eq(tickets_path)

    expect(page).to_not have_text(@t1.title)
    expect(page).to_not have_text(@t1.description)
  end


  it "can delete a ticket" do
    visit tickets_path

    within("#ticket-#{@t2.id}") do
      expect(page).to have_text(@t2.title)
      click_on "Delete"
    end

    expect(current_path).to eq(tickets_path)

    expect(page).to_not have_text(@t2.title)
    expect(page).to_not have_text(@t2.description)
  end
end