module BankHolidaysHelper

  def parenthesis(name_in_country)
    return if name_in_country.empty?

    " (#{name_in_country})"
  end

end
