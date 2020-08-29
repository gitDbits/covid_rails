# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating states brazil"

states = State.create([
  { 
    uf: 'RO',
    name: 'Rondônia'
  },
  {
    uf: 'AC',
    name: 'Acre'
  },
  { 
    uf: 'AM',
    name: 'Amazonas'
  },
  { 
    uf: 'RR',
    name: 'Roraima'
  },
  { 
    uf: 'PA',
    name: 'Pará'
  },
  { 
    uf: 'AP',
    name: 'Amapá'
  },
  { 
    uf: 'TO',
    name: 'Tocantins'
  },
  { 
    uf: 'MA',
    name: 'Maranhão'
  },
  { 
    uf: 'PI',
    name: 'Piauí'
  },
  { 
    uf: 'CE',
    name: 'Ceará'
  },
  { 
    uf: 'PB',
    name: 'Paraíba'
  },
  { 
    uf: 'PE',
    name: 'Pernambuco'
  },
  { 
    uf: 'AL',
    name: 'Alagoas'
  },
  { 
    uf: 'SE',
    name: 'Sergipe'
  },
  { 
    uf: 'BA',
    name: 'Bahia'
  },
  { 
    uf: 'MG',
    name: 'Minas Gerais'
  },
  { 
    uf: 'ES',
    name: 'Espírito Santo'
  },
  { 
    uf: 'RJ',
    name: 'Rio de Janeiro'
  },
  { 
    uf: 'SP',
    name: 'São Paulo'
  },
  { 
    uf: 'PR',
    name: 'Paraná'
  },
  { 
    uf: 'SC',
    name: 'Santa Catarina'
  },
  { 
    uf: 'RS',
    name: 'Rio Grande do Sul'
  },
  { 
    uf: 'MS',
    name: 'Mato Grosso do Sul'
  },
  { 
    uf: 'MT',
    name: 'Mato Grosso'
  },
  { 
    uf: 'GO',
    name: 'Goiás'
  }, 
  {
    uf: 'DF',
    name: 'Distrito Federal'
  }
])

puts "OK Create states brazil"

puts "Creating amount for states"

covid_amount = CovidCase.create([
  {
    amount: 776135,
    death: 29194,
    suspect: 5334,
    cured: 596,
    state_id: 1
  },
  {
    amount: 245021,
    death: 5116,
    suspect: 573,
    cured: 36,
    state_id: 2
  },
  { 
    amount: 216675,
    death: 15700,
    suspect: 1254,
    cured: 148,
    state_id: 3
  },
  { 
    amount: 776135,
    death: 29194,
    suspect: 5334,
    cured: 596,
    state_id: 4
  },
  { 
    amount: 208782,
    death: 8351,
    suspect: 493,
    cured: 89,
    state_id: 5
  },
  { 
    amount: 42285,
    death: 29194,
    suspect: 5334,
    cured: 596,
    state_id: 6
  },
  { 
    amount: 201973,
    death: 4948,
    suspect: 925,
    cured: 104,
    state_id: 7
  },
  { 
    amount: 193564,
    death: 6097,
    suspect: 43,
    cured: 23,
    state_id: 8
  },
  { 
    amount: 155253,
    death: 2399,
    suspect: 327,
    cured: 107,
    state_id: 9
  },
  { 
    amount: 147676,
    death: 3390,
    suspect: 125,
    cured: 13,
    state_id: 10
  },
  { 
    amount: 137560,
    death: 2142,
    suspect: 346,
    cured: 47,
    state_id: 11
  },
  { 
    amount: 124593,
    death: 2888,
    suspect: 353,
    cured: 55,
    state_id: 12
  },
  { 
    amount: 122241,
    death: 3102,
    suspect: 400,
    cured: 119,
    state_id: 13
  },
  { 
    amount: 121078,
    death: 7460,
    suspect: 89,
    cured: 23,
    state_id: 14
  },
  { 
    amount: 117412,
    death: 3600,
    suspect: 18,
    cured: 26,
    state_id: 15
  },
  { 
    amount: 115984,
    death: 3235,
    suspect: 416,
    cured: 330,
    state_id: 16
  },
  { 
    amount: 107909,
    death: 3086,
    suspect: 71,
    cured: 21,
    state_id: 17
  },
  { 
    amount: 103213,
    death: 2371,
    suspect: 85,
    cured: 11,
    state_id: 18
  },
  { 
    amount: 85709,
    death: 2611,
    suspect: 45,
    cured: 8,
    state_id: 19
  },
  { 
    amount: 77317,
    death: 1844,
    suspect: 43,
    cured: 22,
    state_id: 20
  },
  { 
    amount: 74096,
    death: 1754,
    suspect: 12,
    cured: 2,
    state_id: 21
  },
  {
    amount: 118315,	 
    death: 29194,
    suspect: 5334,
    cured: 596,
    state_id: 22
  },
  { 
    amount: 71222,
    death: 1822,
    suspect: 15,
    cured: 11,
    state_id: 23
  },
  { 
    amount: 60442,
    death: 2215,
    suspect: 108,
    cured: 22,
    state_id: 24
  },
  { 
    amount: 53119,
    death: 1100,
    suspect: 61,
    cured: 2,
    state_id: 25
  },
  { 
    amount: 46364,
    death: 621,
    suspect: 13,
    cured: 0,
    state_id: 26
  }
])
puts "OK Create Covid Cases"