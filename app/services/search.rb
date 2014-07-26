class Search

  BETWEEN = /between (\d{4}|\d{2}\/\d{2}\/\d{4}) and (\d{4}|\d{2}\/\d{2}\/\d{4})/
  ON      = /on (\d{4}|\d{2}\/\d{2}\/\d{4})/

  attr_reader :terms

  def initialize(terms)
    @terms = terms
    @scope = BankHoliday
  end

  def all
    @all ||= by_date.by_country.scope
  end

  def empty?
    all.count == 0
  end

  def by_date
    dates = on || between || []

    if dates.length == 1
      @scope = @scope.where(on: dates.first)
    elsif dates.length == 2
      @scope = @scope.where(on: dates.first.. dates.last)
    end

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

  def scope
    @scope == BankHoliday ? [] : @scope
  end

  def between
    match = BETWEEN.match @terms
    return if !match || match.length != 3

    before = date_from_string(match[1])
    after  = date_from_string(match[2])

    before = before.first
    after  = after.last

    [before, after] if before && after
  end

  def on
    match = ON.match @terms

    date_from_string(match[1]) if match && match.length == 2
  end

  def countries
    @countries ||= in_countries
  end

  def states
    @states ||= State.where(country: countries)
  end

  def in_countries
    match = /in (.*)/.match @terms
    return [] if !match || match.length != 2

    string = match[1].split /, | and /
    Country.where(name: string) + Country.where(iso: string.map(&:upcase)) || []
  end

  def date_from_string(string)
    if string.length == 4
      date = Date.new string.to_i
      [date.beginning_of_year, date.end_of_year]
    else
      [Date.parse(string)] rescue []
    end
  end

end
