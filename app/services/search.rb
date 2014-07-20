class Search

  def initialize(date, countries = {})
    @date      = date
    @countries = countries
  end

  def perform
    BankHoliday.where(date: date, countries: countries)
  end

end
