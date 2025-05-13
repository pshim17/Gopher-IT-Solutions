class TicketsController < ApplicationController
  before_action :set_ticket, only: [:edit, :update, :show]

  def index
    @tickets = Ticket.all
  end

  def new
   @ticket = Ticket.new
  end

  def create
    ticket = Ticket.create!(ticket_params)
    redirect_to ticket_path(ticket)
  end

  def edit; end

  def update
    @ticket.update!(ticket_params)
    redirect_to ticket_path(@ticket)
  end

  def show; end

  private

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:title, :description, :status)
  end
end