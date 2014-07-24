class Builder::Day

  def get(year, parser_day)
    if parser_day.day?
      Date.new year, parser_day.month, parser_day.day
    elsif parser_day.wday?
      date_from_wday(year, parser_day.month, parser_day.wday, parser_day.week)
    else
      eval parser_day.method
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
