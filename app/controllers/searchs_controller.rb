class SearchsController < ApplicationController

  def new
    @search = Search.new
    @search.perform
  end


  def create
    @search = Search.new params[:search]
    @search.perform
  end

end
