class State < ActiveRecord::Base
  include Concerns::Place

  belongs_to :country
end
