class BankHoliday < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  belongs_to :place, polymorphic: true

  validates :on, presence: true

  class << self

    def years
      pluck(:on).map(&:year).uniq
    end

  end

  def place_name
    place.fullname
  end

  def name_in_country
    key = "days.#{name.parameterize('_')}"
    I18n.t key, locale: country.iso.downcase, default: ''
  end

  def country
    place.country rescue place
  end
end
