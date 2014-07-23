class Builder::BankHoliday < Struct.new(:parser, :place)

  def perform(year)
    parser.each_days do |day_builder|
      on = day.get(year, day_builder)
      on = substitute.get(day_builder, on)

      ::BankHoliday.create!(name: day_builder.name,
                            on: on,
                            informal: day_builder.informal?,
                            place: country)
    end
  end

  def substitute
    @substitute ||= Substitute.new(country)
  end

  def day
    @day ||= Day.new
  end
end
