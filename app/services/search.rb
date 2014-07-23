class Search

  attr_reader :date, :year, :scope

  def initialize(date, year, country_isos)
    @date         = date
    @year         = year
    @country_isos = country_isos || []
    @scope        = BankHoliday
  end

  def all
    by_date.by_year.by_country.scope
  end

  def countries
    @countries ||= Country.where(iso: @country_isos)
  end

  def states
    @states ||= State.where(country: countries)
  end

  def by_date
    return self unless on.present?
    @scope = @scope.where(on: on)

    self
  end

  def by_year
    return self unless year.present?
    date = Date.new year.to_i
    @scope = @scope.where(on: date.beginning_of_year..date.end_of_year)

    self
  end

  def by_country
    return self if countries.empty?

    ids = []
    if countries.any?
      ids += @scope.where(place_id: countries, place_type: 'Country').pluck(:id)
    end

    if states.any?
      ids += @scope.where(place_id: states, place_type: 'State').pluck(:id)
    end
    @scope = @scope.where(id: ids)

    self
  end

  def on
    @on ||= Date.parse date rescue nil
  end

end
