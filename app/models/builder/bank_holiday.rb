class Builder::BankHoliday < Struct.new(:parser, :country)

  def perform(year)
    parser.each_days do |day_builder|
      on = build_on(year, day_builder)

      ::BankHoliday.create!(name: day_builder.name,
                            on: on,
                            informal: day_builder.informal?,
                            place: country)
    end
  end

  def build_on(year, day_builder)
    if day_builder.day?
      Date.new year, day_builder.month, day_builder.day
    elsif day_builder.wday?
      date_from_wday(year, day_builder.month, day_builder.wday, day_builder.week)
    else
      eval day_builder.method
    end
  end

  def date_from_wday(year, month, wday, week)
    return last_date_from_wday(year, month, wday) if week == -1

    date = Date.civil(year, month, (week-1)*7 + 1)
    date.upto(date + 1.week).find { |d| d.wday == wday }
  end

  def last_date_from_wday(year, month, wday)
    Date.new(year, month, -1).downto(0).find { |d| d.wday == wday }
  end

  def day_before(year, month, day, wday)
    date = Date.new year, month, day
    date.downto(0).find { |d| d.wday == wday }
  end

  def easter_day(year)
    a = year % 19
    b = year / 100
    c = year % 100
    d = b / 4
    e = b % 4
    f = (b + 8) / 25
    g = (b - f + 1) / 3
    h = (19 * a + b - d - g + 15) % 30
    i = c / 4
    k = c % 4
    l = (32 + 2 * e + 2 * i - h - k) % 7
    m = (a + 11 * h + 22 * l) / 451
    month = (h + l - 7 * m + 114) / 31
    day = ((h + l - 7 * m + 114) % 31) + 1
    Date.new(year, month, day)
  end
end
