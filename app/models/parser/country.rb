class Parser::Country < Struct.new(:yaml)

  def each_days
    yaml["days"].each do |yaml_day|
      yield Parser::Day.new(yaml_day)
    end
  end

  def substitute?
    yaml["substitute"]
  end

end
