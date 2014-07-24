class Builder::BankHoliday < Struct.new(:parser, :place)

  def perform(year)
    parser.each_days do |parser_day|
      puts parser_day
      on = builder_day.get(year, parser_day)
      on = substitute.get(parser_day.substitute, on)

      ::BankHoliday.create!(name: parser_day.name,
                            on: on,
                            informal: parser_day.informal?,
                            place: place)
    end
  end

  def substitute
    @substitute ||= Builder::Substitute.new(place)
  end

  def builder_day
    @day ||= Builder::Day.new
  end
end
