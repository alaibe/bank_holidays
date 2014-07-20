class Builder::BankHoliday < Struct.new(:parser, :country)

  def perform(year)
    parser.each_days do |day_builder|
      on = if day_builder.day?
        Date.new year, day_builder.month, day_builder.day
      else
        eval day_builder.method
      end

      ::BankHoliday.create!(name: day_builder.name,
                            on: on,
                            informal: day_builder.informal?,
                            have_bank_holiday: country)
    end
  end

  def first_monday(year, month)
    start = Date.new(year, month)
    start.upto(start.next_week).find(&:monday?)
  end

  def last_monday(year, month)
    Date.new(year, month, -1).downto(0).find(&:monday?)
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