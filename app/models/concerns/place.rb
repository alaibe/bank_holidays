module Concerns::Place
  extend ActiveSupport::Concern

  included do
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_many :bank_holidays, as: :place
  end

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
    @file ||= File.new(File.join Rails.root, "config/#{self.class.table_name}/#{iso.downcase}.yml")
  end
end
