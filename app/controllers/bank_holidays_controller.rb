class BankHolidaysController < ApplicationController

  def index
    @bank_holidays = Search.new params[:terms]
  end

end
