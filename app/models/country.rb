class Country < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  has_many :states
  has_many :bank_holidays, as: :have_bank_holiday

  def generate(year)
    builder.perform(year)
  end

  private

  def builder
    @builder ||= ::Builder::BankHoliday.new parser, self
  end

  def parser
    @parser ||= ::Parser::Country.new yaml
  end

  def yaml
    @yaml ||= YAML.load file
  end

  def file
    @file ||= File.new(File.join Rails.root, "config/countries/#{iso.downcase}.yml")
  end
end
