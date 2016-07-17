class StatisticsController < ApplicationController
  def test_stats
    params.require(:candidate_id)
    render json: Result.joins(:bureau_de_vote).where(candidate_id: params[:candidate_id]).merge(BureauDeVote.where(code_reg: '11')).pluck(:bureau, :result)
  end
end