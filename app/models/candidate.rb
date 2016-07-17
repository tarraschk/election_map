class Candidate < ActiveRecord::Base
  belongs_to  :election
  has_many    :results
end
