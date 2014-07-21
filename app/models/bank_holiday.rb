class BankHoliday < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  belongs_to :place, polymorphic: true

  class << self

    def years
      pluck(:on).map(&:year).uniq
    end

  end

  def place_name
    place.fullname
  end
end
