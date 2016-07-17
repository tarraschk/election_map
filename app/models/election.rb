class Election < ActiveRecord::Base
  has_many :results
  has_many :candidates
end
