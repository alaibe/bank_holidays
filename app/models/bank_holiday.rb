class BankHoliday < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  belongs_to :have_bank_holiday, polymorphic: true

end
