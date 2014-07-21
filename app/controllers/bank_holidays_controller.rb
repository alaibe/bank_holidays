class BankHolidaysController < ApplicationController

  def index
    @bank_holidays = Search.new params[:date], params[:year]
  end

end
