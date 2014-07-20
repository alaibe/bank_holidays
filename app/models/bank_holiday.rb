class BankHoliday < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  belongs_to :have_bank_holiday, polymorphic: true

  class << self

    def years
      pluck(:on).map(&:year).uniq
    end

  end

  def place
    have_bank_holiday.name
  end
end
