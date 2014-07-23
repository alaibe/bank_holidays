class Parser::Place < Struct.new(:yaml)

  def each_days
    yaml["days"].each do |yaml_day|
      yield Parser::Day.new(yaml_day)
    end
  end

end
