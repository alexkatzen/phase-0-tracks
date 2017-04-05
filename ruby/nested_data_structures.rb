constitution = {
  legislative_branch: {
    congress: ["Senate", "House Of Representatives"],
    offices: [
      "Architect Of The Capitol", 
      "United States Botanic Garden", 
      "General Accounting Office",
      "Government Printing Office",
      "Library Of Congress",
      "Congressional Budget Office"
    ]
  },
  
  executive_branch: {
    administration: {
      president: "Donald J. Trump",
      vice_president: "Mike Pence",
      first_lady: "Melania Trump",
      mrs: "Karen Pence",
      cabinet: {
        secretary_of_state: "Rex W. Tillerson",
        secretary_of_tresury: "Steven T. Mnuchin",
        secretary_of_defense: "James Mattis",
        attorney_general: "Jeff Sessions",
        secretary_of_the_interior: "Ryan Zinke",
        secretary_of_agriculture: "Sonny Perdue",
        secretary_of_commerce: "Wilbur L. Ross, Jr.",
        secretary_of_labor: "Alexander Acosta",
        secretary_of_health_and_human_services: "Thomas Price",
        secretary_of_housing_and_urban_development: "Benjamin S. Carson, Sr.",
        secretary_of_transportation: "Elaine L. Chao",
        secretary_of_energy: "James Richard Perry",
        secretary_of_education: "Elisabeth Prince DeVos",
        secretary_of_veterans_affairs: "David J. Shulkin",
        secretary_of_homeland_security: "John F. Kelly",
        white_house_chief_of_staff: "Reince Priebus",
        us_trade_representative: "Robert Lighthizer",
        director_of_national_intelligence: "Daniel Coats",
        representative_of_the_united_states_to_the_united_nations: "Nikki R. Haley",
        director_of_the_office_of_management_and_budget: "Mick Mulvaney",
        director_of_the_central_intelligence_agency: "Mike Pompeo",
        administrator_of_the_environmental_protection_agency: "Agency Scott Pruitt",
        administrator_of_the_small_business_administration: "Linda E. McMahon"
        }
      },
    offices_of_the_president: [
      "White House Office",
      "Office Of The Vice President",
      "Council Of Economic Advisors",
      "Council On Environmental Quality",
      "National Security Council",
      "Office Of Administration",
      "Office Of Management And Budget",
      "Office Of National Drug Control Policy",
      "Office Of Policy Development",
      "Office Of Science And Technology Policy",
      "Office Of The U.S. Trade Representative",
      ],
    departments: [
      "Department Of Agriculture",
      "Department Of Commerce",
      "Department Of Defense",
      "Department Of Education",
      "Department Of Energy",
      "Department Of Health And Human Services",
      "Department Of Homeland Security",
      "Department Of Housing And Urban Development",
      "Department Of The Interior",
      "Department Of Justice",
      "Department Of Labor",
      "Department Of State",
      "Department Of Transportation",
      "Department Of The Treasury",
      "Department Of Veterans Affairs",
      ],
    i_e_g_c: [
      "African Development Foundation",
      "Central Intelligence Agency",
      "Commodity Futures Trading Commission",
      "Consumer Product Safety Commission",
      "Corporation for National and Community Service",
      "Defense Nuclear Facilities Safety Board",
      "Environmental Protection Agency",
      "Equal Employment Opportunity Commission",
      "Export-Import Bank of the United States",
      "Farm Credit Administration",
      "Federal Communications Commission ",
      "Federal Deposit Insurance Corporation",
      "Federal Election Commission",
      "Federal Emergency Management Agency",
      "Federal Housing Finance Board",
      "Federal Labor Relations Authority ",
      "Federal Maritime Commission",
      "Federal Mediation and Conciliation Service ",
      "Federal Mine Safety and Health Review Commission",
      "Federal Reserve System",
      "Federal Retirement Thrift Investment Board",
      "Federal Trade Commission",
      "General Services Administration",
      "Inter-American Foundation ",
      "Merit Systems Protection Board ",
      "National Aeronautics and Space Administration",
      "National Archives and Records Administration",
      "National Capital Planning Commission ",
      "National Credit Union Administration",
      "National Foundation on the Arts and the Humanities",
      "National Endowment for the Humanities",
      "National Endowment for the Arts ",
      "Institute of Museum and Library Services ",
      "National Gallery of Art",
      "National Labor Relations Board ",
      "National Mediation Board ",
      "National Partnership for Reinventing Government",
      "National Railroad Passenger Corporation (Amtrak)",
      "National Science Foundation",
      "National Transportation Safety Board",
      "Nuclear Regulatory Commission",
      "Occupational Safety and Health Review Commission",
      "Office of Government Ethics ",
      "Office of Personnel Management ",
      "Office of Special Counsel",
      "Panama Canal Commission",
      "Peace Corps",
      "Pension Benefit Guaranty Corporation",
      "Postal Rate Commission ",
      "Railroad Retirement Board ",
      "Securities and Exchange Commission",
      "Selective Service System",
      "Small Business Administration ",
      "Social Security Administration ",
      "Tennessee Valley Authority ",
      "Thrift Depositor Protection Oversight Board ",
      "Trade and Development Agency ",
      "United States Arms Control and Disarmament Agency",
      "United States Commission on Civil Rights",
      "United States Information Agency ",
      "United States International Development Cooperation Agency ",
      "United States International Trade Commission",
      "United States Postal Service"
    ]
  },
  
  judicial_branch: {
    supreme_court_justices: [
      "John G. Roberts",
      "Anthony M. Kennedy",
      "Clarence Thomas",
      "Ruth Bader Ginsburg",
      "Stephen G. Breyer",
      "Samuel Anthony Alito Jr.",
      "Sonia Sotomayor",
      "Elena Kagan"
      ],
    federal_courts: [
      "United Statues Courts Of Appeals",
      "United States District Courts",
      "Territorial Courts",
      "United States Court Of International Trade",
      "United States Court Of Federal Claims",
      "United States Court Of Appeals For The Armed Forces",
      "United States Tax Court",
      "United States Court Of Appeals For Veterans Claims",
      "Administrative Office Of The United States Courts",
      "Federal Judicial Center",
      "United States Sentencing Commission"
      ]
  }
}
puts "___"
puts "The current US President is (╯°□°)╯︵ ┻━┻ #{constitution[:executive_branch][:administration][:president].reverse}"
puts ""
puts "___"
puts "The president's cabinet looks like this:"
constitution[:executive_branch][:administration][:cabinet].each do |position, person|
  puts "#{position.to_s.gsub("_", " ")}..... #{person}"
end
puts ""
puts "___"
puts "Here's a random independent establishment or government corporation:"
puts constitution[:executive_branch][:i_e_g_c][rand(63)]
puts ""
puts "___"
p "The Secretary Of Housing And Urban Development is #{constitution[:executive_branch][:administration][:cabinet][:secretary_of_housing_and_urban_development]}. Yay?"
puts ""
puts "___"
puts "Number of sitting Supreme Court Justices:"
puts constitution[:judicial_branch][:supreme_court_justices].length
