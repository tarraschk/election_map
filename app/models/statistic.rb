class Statistic
  def self.find_evolution(code_reg, first_election_id, second_election_id, first_political_current, second_political_current)
    all_current = ["Extrême gauche", "Ecologiste", "Gauche", "Droite", "Centre", "Extrême Gauche", "Extrême Droite"]
    first_political_current         = all_current.select{|current| first_political_current.match( current)}
    second_political_current        = all_current.select{|current| second_political_current.match(current)}
    first_election_candidates       = Candidate.where(political_current: first_political_current,   election_id: first_election_id).pluck(:id)
    first_election_candidates_bis   = Candidate.where(political_current: second_political_current,  election_id: first_election_id).pluck(:id)
    first_election_results          = Hash[BureauDeVote.where(code_reg: code_reg).joins(:results).merge(Result.where(candidate_id: first_election_candidates      )).group(:bureau).pluck(:bureau, 'sum(result)')]
    first_election_results_bis      = Hash[BureauDeVote.where(code_reg: code_reg).joins(:results).merge(Result.where(candidate_id: first_election_candidates_bis  )).group(:bureau).pluck(:bureau, 'sum(result)')]

    second_election_candidates      = Candidate.where(political_current: first_political_current,   election_id: second_election_id).pluck(:id)
    second_election_candidates_bis  = Candidate.where(political_current: second_political_current,  election_id: second_election_id).pluck(:id)
    second_election_results         = Hash[BureauDeVote.where(code_reg: code_reg).joins(:results).merge(Result.where(candidate_id: second_election_candidates     )).order(:bureau).group(:bureau).pluck(:bureau, 'sum(result)')]
    second_election_results_bis     = Hash[BureauDeVote.where(code_reg: code_reg).joins(:results).merge(Result.where(candidate_id: second_election_candidates_bis )).order(:bureau).group(:bureau).pluck(:bureau, 'sum(result)')]

    all_bureaux = first_election_results.map(&:first) | second_election_results.map(&:first)

    all_bureaux.map do |bureau|
      first_result      = first_election_results[       bureau]
      first_result_bis  = first_election_results_bis[   bureau]
      second_result     = second_election_results[      bureau]
      second_result_bis = second_election_results_bis[  bureau]
      if  first_result.to_i.zero?   || first_result_bis.to_i.zero? ||
          second_result.to_i.zero?  || second_result_bis.to_i.zero?
        next [bureau, 'NA']
      end
      [bureau, (second_result_bis.to_f / second_result.to_f) / (first_result_bis.to_f / first_result.to_f)]
    end

  end
end