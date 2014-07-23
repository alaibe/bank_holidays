class Builder::Substitute < Struct.new(:place)

  def get(method, date)
    send method, date
  end

  def next_available_weekday(date)
    return date if [0, 6].include? date.wday

    new_date = if date.wday == 6
      date + 2.days
    elsif date.wday == 0
      date + 1.day
    end

    new_date + 1.day while place.bank_holidays.find_by(on: new_date)
    new_date
  end

end
