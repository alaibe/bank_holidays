class Search

  attr_reader :date, :year

  def initialize(date = nil, year = nil, countries = [])
    @date      = date
    @year     = year
    @countries = countries
  end

  def all
    if on
      BankHoliday.where(on: on)
    elsif year
      date = Date.new year.to_i
      BankHoliday.where(on: date.beginning_of_year..date.end_of_year)
    end
  end

  private

  def on
    @on ||= Date.parse date rescue nil
  end

end
