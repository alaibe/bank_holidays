# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.delete_all
State.delete_all
BankHoliday.delete_all

Country.create!(name: 'Afghanistan', iso: 'AF')
Country.create!(name: 'Åland Islands', iso: 'AX')
Country.create!(name: 'Albania', iso: 'AL')
Country.create!(name: 'Algeria', iso: 'DZ')
Country.create!(name: 'American Samoa', iso: 'AS')
Country.create!(name: 'Andorra', iso: 'AD')
Country.create!(name: 'Angola', iso: 'AO')
Country.create!(name: 'Anguilla', iso: 'AI')
Country.create!(name: 'Antarctica', iso: 'AQ')
Country.create!(name: 'Antigua and Barbuda', iso: 'AG')
Country.create!(name: 'Argentina', iso: 'AR')
Country.create!(name: 'Armenia', iso: 'AM')
Country.create!(name: 'Aruba', iso: 'AW')
Country.create!(name: 'Australia', iso: 'AU')
Country.create!(name: 'Austria', iso: 'AT')
Country.create!(name: 'Azerbaijan', iso: 'AZ')
Country.create!(name: 'Bahamas', iso: 'BS')
Country.create!(name: 'Bahrain', iso: 'BH')
Country.create!(name: 'Bangladesh', iso: 'BD')
Country.create!(name: 'Barbados', iso: 'BB')
Country.create!(name: 'Belarus', iso: 'BY')
Country.create!(name: 'Belgium', iso: 'BE')
Country.create!(name: 'Belize', iso: 'BZ')
Country.create!(name: 'Benin', iso: 'BJ')
Country.create!(name: 'Bermuda', iso: 'BM')
Country.create!(name: 'Bhutan', iso: 'BT')
Country.create!(name: 'Bolivia, Plurinational State of', iso: 'BO')
Country.create!(name: 'Bonaire, Sint Eustatius and Saba', iso: 'BQ')
Country.create!(name: 'Bosnia and Herzegovina', iso: 'BA')
Country.create!(name: 'Botswana', iso: 'BW')
Country.create!(name: 'Bouvet Island', iso: 'BV')
Country.create!(name: 'Brazil', iso: 'BR')
Country.create!(name: 'British Indian Ocean Territory', iso: 'IO')
Country.create!(name: 'Brunei Darussalam', iso: 'BN')
Country.create!(name: 'Bulgaria', iso: 'BG')
Country.create!(name: 'Burkina Faso', iso: 'BF')
Country.create!(name: 'Burundi', iso: 'BI')
Country.create!(name: 'Cambodia', iso: 'KH')
Country.create!(name: 'Cameroon', iso: 'CM')
Country.create!(name: 'Canada', iso: 'CA')
Country.create!(name: 'Cabo Verde', iso: 'CV')
Country.create!(name: 'Cayman Islands', iso: 'KY')
Country.create!(name: 'Central African Republic', iso: 'CF')
Country.create!(name: 'Chad', iso: 'TD')
Country.create!(name: 'Chile', iso: 'CL')
Country.create!(name: 'China', iso: 'CN')
Country.create!(name: 'Christmas Island', iso: 'CX')
Country.create!(name: 'Cocos (Keeling) Islands', iso: 'CC')
Country.create!(name: 'Colombia', iso: 'CO')
Country.create!(name: 'Comoros', iso: 'KM')
Country.create!(name: 'Congo', iso: 'CG')
Country.create!(name: 'Congo, the Democratic Republic of the', iso: 'CD')
Country.create!(name: 'Cook Islands', iso: 'CK')
Country.create!(name: 'Costa Rica', iso: 'CR')
Country.create!(name: "Côte d'Ivoire", iso: 'CI')
Country.create!(name: 'Croatia', iso: 'HR')
Country.create!(name: 'Cuba', iso: 'CU')
Country.create!(name: 'Curaçao', iso: 'CW')
Country.create!(name: 'Cyprus', iso: 'CY')
Country.create!(name: 'Czech Republic', iso: 'CZ')
Country.create!(name: 'Denmark', iso: 'DK')
Country.create!(name: 'Djibouti', iso: 'DJ')
Country.create!(name: 'Dominica', iso: 'DM')
Country.create!(name: 'Dominican Republic', iso: 'DO')
Country.create!(name: 'Ecuador', iso: 'EC')
Country.create!(name: 'Egypt', iso: 'EG')
Country.create!(name: 'El Salvador', iso: 'SV')
Country.create!(name: 'Equatorial Guinea', iso: 'GQ')
Country.create!(name: 'Eritrea', iso: 'ER')
Country.create!(name: 'Estonia', iso: 'EE')
Country.create!(name: 'Ethiopia', iso: 'ET')
Country.create!(name: 'Falkland Islands (Malvinas)', iso: 'FK')
Country.create!(name: 'Faroe Islands', iso: 'FO')
Country.create!(name: 'Fiji', iso: 'FJ')
Country.create!(name: 'Finland', iso: 'FI')
Country.create!(name: 'France', iso: 'FR', activated: true)
Country.create!(name: 'French Guiana', iso: 'GF')
Country.create!(name: 'French Polynesia', iso: 'PF')
Country.create!(name: 'French Southern Territories', iso: 'TF')
Country.create!(name: 'Gabon', iso: 'GA')
Country.create!(name: 'Gambia', iso: 'GM')
Country.create!(name: 'Georgia', iso: 'GE')
Country.create!(name: 'Germany', iso: 'DE')
Country.create!(name: 'Ghana', iso: 'GH')
Country.create!(name: 'Gibraltar', iso: 'GI')
Country.create!(name: 'Greece', iso: 'GR')
Country.create!(name: 'Greenland', iso: 'GL')
Country.create!(name: 'Grenada', iso: 'GD')
Country.create!(name: 'Guadeloupe', iso: 'GP')
Country.create!(name: 'Guam', iso: 'GU')
Country.create!(name: 'Guatemala', iso: 'GT')
Country.create!(name: 'Guernsey', iso: 'GG')
Country.create!(name: 'Guinea', iso: 'GN')
Country.create!(name: 'Guinea-Bissau', iso: 'GW')
Country.create!(name: 'Guyana', iso: 'GY')
Country.create!(name: 'Haiti', iso: 'HT')
Country.create!(name: 'Heard Island and McDonald Islands', iso: 'HM')
Country.create!(name: 'Holy See (Vatican City State)', iso: 'VA')
Country.create!(name: 'Honduras', iso: 'HN')
Country.create!(name: 'Hong Kong', iso: 'HK')
Country.create!(name: 'Hungary', iso: 'HU')
Country.create!(name: 'Iceland', iso: 'IS')
Country.create!(name: 'India', iso: 'IN')
Country.create!(name: 'Indonesia', iso: 'ID')
Country.create!(name: 'Iran, Islamic Republic of', iso: 'IR')
Country.create!(name: 'Iraq', iso: 'IQ')
Country.create!(name: 'Ireland', iso: 'IE')
Country.create!(name: 'Isle of Man', iso: 'IM')
Country.create!(name: 'Israel', iso: 'IL')
Country.create!(name: 'Italy', iso: 'IT')
Country.create!(name: 'Jamaica', iso: 'JM')
Country.create!(name: 'Japan', iso: 'JP')
Country.create!(name: 'Jersey', iso: 'JE')
Country.create!(name: 'Jordan', iso: 'JO')
Country.create!(name: 'Kazakhstan', iso: 'KZ')
Country.create!(name: 'Kenya', iso: 'KE')
Country.create!(name: 'Kiribati', iso: 'KI')
Country.create!(name: "Korea, Democratic People's Republic of", iso: 'KP')
Country.create!(name: 'Korea, Republic of', iso: 'KR')
Country.create!(name: 'Kuwait', iso: 'KW')
Country.create!(name: 'Kyrgyzstan', iso: 'KG')
Country.create!(name: "Lao People's Democratic Republic", iso: 'LA')
Country.create!(name: 'Latvia', iso: 'LV')
Country.create!(name: 'Lebanon', iso: 'LB')
Country.create!(name: 'Lesotho', iso: 'LS')
Country.create!(name: 'Liberia', iso: 'LR')
Country.create!(name: 'Libya', iso: 'LY')
Country.create!(name: 'Liechtenstein', iso: 'LI')
Country.create!(name: 'Lithuania', iso: 'LT')
Country.create!(name: 'Luxembourg', iso: 'LU')
Country.create!(name: 'Macao', iso: 'MO')
Country.create!(name: 'Macedonia, the former Yugoslav Republic of', iso: 'MK')
Country.create!(name: 'Madagascar', iso: 'MG')
Country.create!(name: 'Malawi', iso: 'MW')
Country.create!(name: 'Malaysia', iso: 'MY')
Country.create!(name: 'Maldives', iso: 'MV')
Country.create!(name: 'Mali', iso: 'ML')
Country.create!(name: 'Malta', iso: 'MT')
Country.create!(name: 'Marshall Islands', iso: 'MH')
Country.create!(name: 'Martinique', iso: 'MQ')
Country.create!(name: 'Mauritania', iso: 'MR')
Country.create!(name: 'Mauritius', iso: 'MU')
Country.create!(name: 'Mayotte', iso: 'YT')
Country.create!(name: 'Mexico', iso: 'MX')
Country.create!(name: 'Micronesia, Federated States of', iso: 'FM')
Country.create!(name: 'Moldova, Republic of', iso: 'MD')
Country.create!(name: 'Monaco', iso: 'MC')
Country.create!(name: 'Mongolia', iso: 'MN')
Country.create!(name: 'Montenegro', iso: 'ME')
Country.create!(name: 'Montserrat', iso: 'MS')
Country.create!(name: 'Morocco', iso: 'MA')
Country.create!(name: 'Mozambique', iso: 'MZ')
Country.create!(name: 'Myanmar', iso: 'MM')
Country.create!(name: 'Namibia', iso: 'NA')
Country.create!(name: 'Nauru', iso: 'NR')
Country.create!(name: 'Nepal', iso: 'NP')
Country.create!(name: 'Netherlands', iso: 'NL')
Country.create!(name: 'New Caledonia', iso: 'NC')
Country.create!(name: 'New Zealand', iso: 'NZ')
Country.create!(name: 'Nicaragua', iso: 'NI')
Country.create!(name: 'Niger', iso: 'NE')
Country.create!(name: 'Nigeria', iso: 'NG')
Country.create!(name: 'Niue', iso: 'NU')
Country.create!(name: 'Norfolk Island', iso: 'NF')
Country.create!(name: 'Northern Mariana Islands', iso: 'MP')
Country.create!(name: 'Norway', iso: 'NO')
Country.create!(name: 'Oman', iso: 'OM')
Country.create!(name: 'Pakistan', iso: 'PK')
Country.create!(name: 'Palau', iso: 'PW')
Country.create!(name: 'Palestine, State of', iso: 'PS')
Country.create!(name: 'Panama', iso: 'PA')
Country.create!(name: 'Papua New Guinea', iso: 'PG')
Country.create!(name: 'Paraguay', iso: 'PY')
Country.create!(name: 'Peru', iso: 'PE')
Country.create!(name: 'Philippines', iso: 'PH')
Country.create!(name: 'Pitcairn', iso: 'PN')
Country.create!(name: 'Poland', iso: 'PL')
Country.create!(name: 'Portugal', iso: 'PT')
Country.create!(name: 'Puerto Rico', iso: 'PR')
Country.create!(name: 'Qatar', iso: 'QA')
Country.create!(name: 'Réunion', iso: 'RE')
Country.create!(name: 'Romania', iso: 'RO')
Country.create!(name: 'Russian Federation', iso: 'RU')
Country.create!(name: 'Rwanda', iso: 'RW')
Country.create!(name: 'Saint Barthélemy', iso: 'BL')
Country.create!(name: 'Saint Helena, Ascension and Tristan da Cunha', iso: 'SH')
Country.create!(name: 'Saint Kitts and Nevis', iso: 'KN')
Country.create!(name: 'Saint Lucia', iso: 'LC')
Country.create!(name: 'Saint Martin (French part)', iso: 'MF')
Country.create!(name: 'Saint Pierre and Miquelon', iso: 'PM')
Country.create!(name: 'Saint Vincent and the Grenadines', iso: 'VC')
Country.create!(name: 'Samoa', iso: 'WS')
Country.create!(name: 'San Marino', iso: 'SM')
Country.create!(name: 'Sao Tome and Principe', iso: 'ST')
Country.create!(name: 'Saudi Arabia', iso: 'SA')
Country.create!(name: 'Senegal', iso: 'SN')
Country.create!(name: 'Serbia', iso: 'RS')
Country.create!(name: 'Seychelles', iso: 'SC')
Country.create!(name: 'Sierra Leone', iso: 'SL')
Country.create!(name: 'Singapore', iso: 'SG')
Country.create!(name: 'Sint Maarten (Dutch part)', iso: 'SX')
Country.create!(name: 'Slovakia', iso: 'SK')
Country.create!(name: 'Slovenia', iso: 'SI')
Country.create!(name: 'Solomon Islands', iso: 'SB')
Country.create!(name: 'Somalia', iso: 'SO')
Country.create!(name: 'South Africa', iso: 'ZA')
Country.create!(name: 'South Georgia and the South Sandwich Islands', iso: 'GS')
Country.create!(name: 'South Sudan', iso: 'SS')
Country.create!(name: 'Spain', iso: 'ES')
Country.create!(name: 'Sri Lanka', iso: 'LK')
Country.create!(name: 'Sudan', iso: 'SD')
Country.create!(name: 'Suriname', iso: 'SR')
Country.create!(name: 'Svalbard and Jan Mayen', iso: 'SJ')
Country.create!(name: 'Swaziland', iso: 'SZ')
Country.create!(name: 'Sweden', iso: 'SE')
Country.create!(name: 'Switzerland', iso: 'CH')
Country.create!(name: 'Syrian Arab Republic', iso: 'SY')
Country.create!(name: 'Taiwan, Province of China', iso: 'TW')
Country.create!(name: 'Tajikistan', iso: 'TJ')
Country.create!(name: 'Tanzania, United Republic of', iso: 'TZ')
Country.create!(name: 'Thailand', iso: 'TH')
Country.create!(name: 'Timor-Leste', iso: 'TL')
Country.create!(name: 'Togo', iso: 'TG')
Country.create!(name: 'Tokelau', iso: 'TK')
Country.create!(name: 'Tonga', iso: 'TO')
Country.create!(name: 'Trinidad and Tobago', iso: 'TT')
Country.create!(name: 'Tunisia', iso: 'TN')
Country.create!(name: 'Turkey', iso: 'TR')
Country.create!(name: 'Turkmenistan', iso: 'TM')
Country.create!(name: 'Turks and Caicos Islands', iso: 'TC')
Country.create!(name: 'Tuvalu', iso: 'TV')
Country.create!(name: 'Uganda', iso: 'UG')
Country.create!(name: 'Ukraine', iso: 'UA')
Country.create!(name: 'United Arab Emirates', iso: 'AE')
Country.create!(name: 'United Kingdom', iso: 'GB', activated: true)
Country.create!(name: 'United States', iso: 'US', activated: true)
Country.create!(name: 'United States Minor Outlying Islands', iso: 'UM')
Country.create!(name: 'Uruguay', iso: 'UY')
Country.create!(name: 'Uzbekistan', iso: 'UZ')
Country.create!(name: 'Vanuatu', iso: 'VU')
Country.create!(name: 'Venezuela, Bolivarian Republic of', iso: 'VE')
Country.create!(name: 'Viet Nam', iso: 'VN')
Country.create!(name: 'Virgin Islands, British', iso: 'VG')
Country.create!(name: 'Virgin Islands, U.S.', iso: 'VI')
Country.create!(name: 'Wallis and Futuna', iso: 'WF')
Country.create!(name: 'Western Sahara', iso: 'EH')
Country.create!(name: 'Yemen', iso: 'YE')
Country.create!(name: 'Zambia', iso: 'ZM')
Country.create!(name: 'Zimbabwe', iso: 'ZW')

gb = Country.find_by(iso: 'GB')
State.create!(name: 'England', iso: "ENG", country_id: gb.id)
State.create!(name: 'Scotland', iso: "SCT", country_id: gb.id)
State.create!(name: 'Wales', iso: "WLS", country_id: gb.id)
State.create!(name: 'N Ireland', iso: "NIR", country_id: gb.id)

fr = Country.find_by(iso: 'FR')
State.create!(name: 'Moselle', iso: "57", country_id: fr.id)
State.create!(name: 'Bas-Rhin', iso: "67", country_id: fr.id)
State.create!(name: 'Haut-Rhin', iso: "68", country_id: fr.id)

years = (1990..2100).to_a
Country.where(activated: true).each do |country|
  years.each do |year|
    country.generate(year)
    country.states.each { |state| state.generate(year) }
  end
end
