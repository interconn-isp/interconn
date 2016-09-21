class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render :created
    else
      render :new
    end
  end

  protected

  def ticket_params
    params.require(:ticket).permit(:full_name, :email, :phone_number, :subject, :body)
  end
end
