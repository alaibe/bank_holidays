class Country < ActiveRecord::Base
  include Concerns::Place

  has_many :states

  def fullname
    name
  end

  private

  def file
    @file ||= File.new(File.join Rails.root, "config/#{self.class.table_name}/#{iso.downcase}.yml")
  end
end
