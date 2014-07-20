class SearchsController < ApplicationController

  def new
  end


  def create
    @search = Search.new params[:date], params[:year]
  end

end
