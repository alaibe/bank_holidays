class Parser::Day < Struct.new(:yaml_day)

  def name
    yaml_day["name"]
  end

  def day
    yaml_day["day"]
  end

  def day?
    day.present?
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

end
