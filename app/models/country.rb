class Country < ActiveRecord::Base
  include Concerns::Place

  has_many :states
end
