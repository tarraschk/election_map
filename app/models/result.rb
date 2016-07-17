class Result < ActiveRecord::Base
  belongs_to :bureau_de_vote
  belongs_to :election
  belongs_to :candidate
end

