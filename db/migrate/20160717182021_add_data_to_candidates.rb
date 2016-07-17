class AddDataToCandidates < ActiveRecord::Migration
  def change
    new_data = [
        ['SCH07T1', 'Parti des travailleurs', 'Extrême gauche'],
        ['VOY07T1', 'Les Verts', 'Ecologiste'],
        ['ROY07T1', 'PS', 'Gauche'],
        ['SAR07T1', 'UMP', 'Droite'],
        ['ROY07T2', 'PS', 'Gauche'],
        ['SAR07T2', 'UMP', 'Droite'],
        ['BAY07T1', 'Modem', 'Centre'],
        ['BES07T1', 'NPA', 'Extrême Gauche'],
        ['BOV07T1', 'Europe Ecologie', 'Ecologiste'],
        ['BUF07T1', 'PCF', 'Extrême Gauche'],
        ['BUF07T1', 'MPF', 'Droite'],
        ['LAG07T1', 'Lutte ouvrière', 'Extrême Gauche'],
        ['LEP07T1', 'FN', 'Extrême Droite'],
        ['NIH07T1', 'CNPT', 'Droite'],
        ['JOLY', 'EEV', 'Ecologiste'],
        ['LEPE', 'FN', 'Extrême Droite'],
        ['SARK', 'UMP', 'Droite'],
        ['MELE', 'FdG', 'Extrême gauche'],
        ['BAYR', 'Modem', 'Centre'],
        ['HOLL', 'PS', 'Gauche'],
        ['DUPO', 'DlF', 'Droite'],
        ['CHEM', 'SP', 'Autre'],
        ['ARTH', 'LO', 'Extrême gauche'],
        ['POUT', 'NPA', 'Extrême gauche']
    ]
    new_data.each do |code, party, political_current|
      Candidate.where(code: code).update_all(party: party, political_current: political_current)
    end
  end
end
