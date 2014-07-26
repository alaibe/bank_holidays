class BankHolidaysController < ApplicationController

  def index
    @search = Search.new params[:terms]
  end

end
