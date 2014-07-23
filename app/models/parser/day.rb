class Parser::Day < Struct.new(:yaml_day)

  def name
    yaml_day["name"]
  end

  def day
    yaml_day["day"]
  end

  def wday
    yaml_day["wday"]
  end

  def day?
    day.present?
  end

  def wday?
    wday.present?
  end

  def week
    yaml_day["week"] || 1
  end

  def month
    yaml_day["month"]
  end

  def method
    yaml_day["method"]
  end

  def informal?
    yaml_day["informal"] || false
  end

  def substitute
    yaml_day["substitue"]
  end

end
