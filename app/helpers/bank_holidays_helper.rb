module BankHolidaysHelper

  def parenthesis(name_in_country)
    return if name_in_country.empty?

    " (#{name_in_country})"
  end

  def to_sentence(countries)
    countries.map do |country|
      "#{country.name} (#{country.iso})"
    end.to_sentence
  end

end
