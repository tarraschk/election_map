class StatisticsController < ApplicationController
  def test_stats
    params.require(:candidate_id)
    render json: Result.joins(:bureau_de_vote).where(candidate_id: params[:candidate_id]).merge(BureauDeVote.where(code_reg: '11')).pluck(:bureau, :result)
  end

  def evolution
    params.require(:code_reg)
    params.require(:first_election_id)
    params.require(:second_election_id)
    params.require(:first_political_current)
    params.require(:second_political_current)
    render json: Statistic.find_evolution(
        params[:code_reg],
        params[:first_election_id], params[:second_election_id],
        params[:first_political_current],
        params[:second_political_current]
    )
  end

end