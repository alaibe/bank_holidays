class State
  extend FriendlyId

  friendly_id :name, use: :slugged

  belong_to :country

  has_many :bank_holidays, as: :have_bank_holiday
end
