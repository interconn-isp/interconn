class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      respond_to do |format|
        format.js { render :created }
      end
    else
      respond_to do |format|
        format.js { render :new }
      end
    end
  end

  protected

  def ticket_params
    params.require(:ticket).permit(:full_name, :email, :phone_number, :subject, :body)
  end
end
