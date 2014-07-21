class State < ActiveRecord::Base
  include Concerns::Place

  belongs_to :country

  def fullname
    "#{name} (#{country.name})"
  end

  private

  def file
    @file ||= File.new(File.join Rails.root, "config/#{self.class.table_name}/#{country.iso.downcase}/#{iso.downcase}.yml")
  end
end
