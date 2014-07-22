class BankHolidaysController < ApplicationController

  def index
    @bank_holidays = Search.new params[:date], params[:year], params[:countries]
  end

end
