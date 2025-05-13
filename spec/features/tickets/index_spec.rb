require 'rails_helper'

RSpec.describe 'Ticket listing', type: :feature do
  before(:each) do
    @t1 = Ticket.create(title: "Ticket 1", description: "Description 1", status: :open)
    @t2 = Ticket.create(title: "Ticket 2", description: "Description 2", status: :in_progress)
  end

  it "shows a list of all submitted tickets with details" do
    visit tickets_path

    within("#ticket-#{@t1.id}") do
      expect(page).to have_content(@t1.title)
      expect(page).to have_content(@t1.description)
      expect(page).to have_content(@t1.status.humanize)
    end

    within("#ticket-#{@t2.id}") do
      expect(page).to have_content(@t2.title)
      expect(page).to have_content(@t2.description)
      expect(page).to have_content(@t2.status.humanize)
    end
  end
end