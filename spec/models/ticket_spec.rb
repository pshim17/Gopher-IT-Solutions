require 'rails_helper'

RSpec.describe Ticket, type: :model do
  before(:each) do
    @ticket = Ticket.create(title: 'Test Ticket', description: 'This is a test ticket', status: :open)
  end
  
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end

  describe 'enums' do
    it 'has correct status values' do
      expect(Ticket.statuses).to eq({ 'open' => 0, 'in_progress' => 1, 'closed' => 2 })
    end

    it 'allows setting and querying statuses' do
      @ticket.status = :in_progress
      expect(@ticket.status).to eq('in_progress')
      expect(@ticket.in_progress?).to be true
    end
  end
end
