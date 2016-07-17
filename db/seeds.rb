# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

region_list = [
      ['1', 'Île-de-France'],
      ['21','Champagne-Ardenne'],
      ['22','Picardie'],
      ['23','Haute-Normandie'],
      ['24','Centre'],
      ['25','Basse-Normandie'],
      ['26','Bourgogne'],
      ['31','Nord-Pas-de-Calais'],
      ['41','Lorraine'],
      ['42','Alsace'],
      ['43','Franche-Comté'],
      ['52','Pays de la Loire'],
      ['53','Bretagne'],
      ['54','Poitou-Charentes'],
      ['72','Aquitaine'],
      ['73','Midi-Pyrénées'],
      ['74','Limousin'],
      ['82','Rhône-Alpes'],
      ['83','Auvergne'],
      ['91','Languedoc-Roussillon'],
      ['93','Provence-Alpes-Côte d\'Azur'],
      ['94','Corse']
]

region_list.each do |codereg, name|
  Region.create( name: name, codereg: codereg)
end