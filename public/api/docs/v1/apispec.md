

# Group Authentication


## Token [/oauth/token]


### Get access token [POST /oauth/token?grant_type=password]
Exchange username and password for access token

+ Request returns token data
**POST**&nbsp;&nbsp;`/oauth/token?grant_type=password`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "username": "person2@example.com",
              "password": "password",
              "client_id": "7d7020ffca04275d74a72582af93653ea9f524b65959fc6dd75c3319cb500329",
              "client_secret": "760ba39e5656875d071d927df60a29ed268dcc41ce30d16b72f7fcc387063c9c"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjdkNzAyMGZmY2EwNDI3NWQ3NGE3MjU4MmFmOTM2NTNlYTlmNTI0YjY1OTU5ZmM2ZGQ3NWMzMzE5Y2I1MDAzMjkifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTY3OTk4MjYsImp0aSI6IjhlY2VmNzc1LTZkYmYtNGQ5ZS1hMDE1LTkxNjMxMGY4MzU0NyIsInVzZXIiOnsiaWQiOjIwMiwiZW1haWwiOiJwZXJzb24yQGV4YW1wbGUuY29tIn19.6OT8nu2hMYqQkz4HBsn1qpiFxinAaQEFJBEvL29CNovwTpu44tV9hYJd2HKmDGuBIbnW1wrl9G06Ns_xZFPZpg",
              "token_type": "bearer",
              "expires_in": 60,
              "refresh_token": "7fbde13a918b0927734425e0b8898945f636f383b30bfea84ad7d7d78ef321de",
              "created_at": 1516799826,
              "user_id": 202
            }

### Refresh access token [POST /oauth/token?grant_type=refresh_token]
Refresh expired access token

+ Request returns refreshed token
**POST**&nbsp;&nbsp;`/oauth/token?grant_type=refresh_token`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "refresh_token": "295e164ec8933dc39b34101e645470bd",
              "client_id": "940be275f15a19532811911ba5dd5521c6f0a4d93cb989a06bf88a9521ef52c9",
              "client_secret": "a866f9399d8d63ed2f57997e5e62b982faa7cc8bef4cfd368032833936accada"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6Ijk0MGJlMjc1ZjE1YTE5NTMyODExOTExYmE1ZGQ1NTIxYzZmMGE0ZDkzY2I5ODlhMDZiZjg4YTk1MjFlZjUyYzkifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTY3OTk4MjYsImp0aSI6ImY0MTliZTRiLTFjN2UtNGIxNy1iOTRhLTJlNWY5NGNiZTM4MyIsInVzZXIiOnsiaWQiOjIwMywiZW1haWwiOiJwZXJzb24zQGV4YW1wbGUuY29tIn19.ws_PSWku6bDfrR8fwohOmd_DSkBklrWmSCGfa-sYNnuxR0paMPKdHWgMFMRwbk6Xtz6diyQ9thpfNlskmDX-Gw",
              "token_type": "bearer",
              "expires_in": 60,
              "refresh_token": "3307495fb1b11ac090a909ce49957809f7d7d64e99c09dac732029087587e9b9",
              "created_at": 1516799826,
              "user_id": 203
            }

# Group Countries


## Countries [/api/v1/countries]


### Get country list [GET /api/v1/countries]


+ Request returns countries
**GET**&nbsp;&nbsp;`/api/v1/countries?null=`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "countries": [
                {
                  "name": "Afghanistan",
                  "code": "AF"
                },
                {
                  "name": "Åland Islands",
                  "code": "AX"
                },
                {
                  "name": "Albania",
                  "code": "AL"
                },
                {
                  "name": "Algeria",
                  "code": "DZ"
                },
                {
                  "name": "American Samoa",
                  "code": "AS"
                },
                {
                  "name": "Andorra",
                  "code": "AD"
                },
                {
                  "name": "Angola",
                  "code": "AO"
                },
                {
                  "name": "Anguilla",
                  "code": "AI"
                },
                {
                  "name": "Antarctica",
                  "code": "AQ"
                },
                {
                  "name": "Antigua and Barbuda",
                  "code": "AG"
                },
                {
                  "name": "Argentina",
                  "code": "AR"
                },
                {
                  "name": "Armenia",
                  "code": "AM"
                },
                {
                  "name": "Aruba",
                  "code": "AW"
                },
                {
                  "name": "Australia",
                  "code": "AU"
                },
                {
                  "name": "Austria",
                  "code": "AT"
                },
                {
                  "name": "Azerbaijan",
                  "code": "AZ"
                },
                {
                  "name": "Bahamas",
                  "code": "BS"
                },
                {
                  "name": "Bahrain",
                  "code": "BH"
                },
                {
                  "name": "Bangladesh",
                  "code": "BD"
                },
                {
                  "name": "Barbados",
                  "code": "BB"
                },
                {
                  "name": "Belarus",
                  "code": "BY"
                },
                {
                  "name": "Belgium",
                  "code": "BE"
                },
                {
                  "name": "Belize",
                  "code": "BZ"
                },
                {
                  "name": "Benin",
                  "code": "BJ"
                },
                {
                  "name": "Bermuda",
                  "code": "BM"
                },
                {
                  "name": "Bhutan",
                  "code": "BT"
                },
                {
                  "name": "Bolivia (Plurinational State of)",
                  "code": "BO"
                },
                {
                  "name": "Bonaire, Sint Eustatius and Saba",
                  "code": "BQ"
                },
                {
                  "name": "Bosnia and Herzegovina",
                  "code": "BA"
                },
                {
                  "name": "Botswana",
                  "code": "BW"
                },
                {
                  "name": "Bouvet Island",
                  "code": "BV"
                },
                {
                  "name": "Brazil",
                  "code": "BR"
                },
                {
                  "name": "British Indian Ocean Territory",
                  "code": "IO"
                },
                {
                  "name": "Brunei Darussalam",
                  "code": "BN"
                },
                {
                  "name": "Bulgaria",
                  "code": "BG"
                },
                {
                  "name": "Burkina Faso",
                  "code": "BF"
                },
                {
                  "name": "Burundi",
                  "code": "BI"
                },
                {
                  "name": "Cabo Verde",
                  "code": "CV"
                },
                {
                  "name": "Cambodia",
                  "code": "KH"
                },
                {
                  "name": "Cameroon",
                  "code": "CM"
                },
                {
                  "name": "Canada",
                  "code": "CA"
                },
                {
                  "name": "Cayman Islands",
                  "code": "KY"
                },
                {
                  "name": "Central African Republic",
                  "code": "CF"
                },
                {
                  "name": "Chad",
                  "code": "TD"
                },
                {
                  "name": "Chile",
                  "code": "CL"
                },
                {
                  "name": "China",
                  "code": "CN"
                },
                {
                  "name": "Christmas Island",
                  "code": "CX"
                },
                {
                  "name": "Cocos (Keeling) Islands",
                  "code": "CC"
                },
                {
                  "name": "Colombia",
                  "code": "CO"
                },
                {
                  "name": "Comoros",
                  "code": "KM"
                },
                {
                  "name": "Congo",
                  "code": "CG"
                },
                {
                  "name": "Congo (Democratic Republic of the)",
                  "code": "CD"
                },
                {
                  "name": "Cook Islands",
                  "code": "CK"
                },
                {
                  "name": "Costa Rica",
                  "code": "CR"
                },
                {
                  "name": "Côte d'Ivoire",
                  "code": "CI"
                },
                {
                  "name": "Croatia",
                  "code": "HR"
                },
                {
                  "name": "Cuba",
                  "code": "CU"
                },
                {
                  "name": "Curaçao",
                  "code": "CW"
                },
                {
                  "name": "Cyprus",
                  "code": "CY"
                },
                {
                  "name": "Czechia",
                  "code": "CZ"
                },
                {
                  "name": "Denmark",
                  "code": "DK"
                },
                {
                  "name": "Djibouti",
                  "code": "DJ"
                },
                {
                  "name": "Dominica",
                  "code": "DM"
                },
                {
                  "name": "Dominican Republic",
                  "code": "DO"
                },
                {
                  "name": "Ecuador",
                  "code": "EC"
                },
                {
                  "name": "Egypt",
                  "code": "EG"
                },
                {
                  "name": "El Salvador",
                  "code": "SV"
                },
                {
                  "name": "Equatorial Guinea",
                  "code": "GQ"
                },
                {
                  "name": "Eritrea",
                  "code": "ER"
                },
                {
                  "name": "Estonia",
                  "code": "EE"
                },
                {
                  "name": "Ethiopia",
                  "code": "ET"
                },
                {
                  "name": "Falkland Islands (Malvinas)",
                  "code": "FK"
                },
                {
                  "name": "Faroe Islands",
                  "code": "FO"
                },
                {
                  "name": "Fiji",
                  "code": "FJ"
                },
                {
                  "name": "Finland",
                  "code": "FI"
                },
                {
                  "name": "France",
                  "code": "FR"
                },
                {
                  "name": "French Guiana",
                  "code": "GF"
                },
                {
                  "name": "French Polynesia",
                  "code": "PF"
                },
                {
                  "name": "French Southern Territories",
                  "code": "TF"
                },
                {
                  "name": "Gabon",
                  "code": "GA"
                },
                {
                  "name": "Gambia",
                  "code": "GM"
                },
                {
                  "name": "Georgia",
                  "code": "GE"
                },
                {
                  "name": "Germany",
                  "code": "DE"
                },
                {
                  "name": "Ghana",
                  "code": "GH"
                },
                {
                  "name": "Gibraltar",
                  "code": "GI"
                },
                {
                  "name": "Greece",
                  "code": "GR"
                },
                {
                  "name": "Greenland",
                  "code": "GL"
                },
                {
                  "name": "Grenada",
                  "code": "GD"
                },
                {
                  "name": "Guadeloupe",
                  "code": "GP"
                },
                {
                  "name": "Guam",
                  "code": "GU"
                },
                {
                  "name": "Guatemala",
                  "code": "GT"
                },
                {
                  "name": "Guernsey",
                  "code": "GG"
                },
                {
                  "name": "Guinea",
                  "code": "GN"
                },
                {
                  "name": "Guinea-Bissau",
                  "code": "GW"
                },
                {
                  "name": "Guyana",
                  "code": "GY"
                },
                {
                  "name": "Haiti",
                  "code": "HT"
                },
                {
                  "name": "Heard Island and McDonald Islands",
                  "code": "HM"
                },
                {
                  "name": "Holy See",
                  "code": "VA"
                },
                {
                  "name": "Honduras",
                  "code": "HN"
                },
                {
                  "name": "Hong Kong",
                  "code": "HK"
                },
                {
                  "name": "Hungary",
                  "code": "HU"
                },
                {
                  "name": "Iceland",
                  "code": "IS"
                },
                {
                  "name": "India",
                  "code": "IN"
                },
                {
                  "name": "Indonesia",
                  "code": "ID"
                },
                {
                  "name": "Iran (Islamic Republic of)",
                  "code": "IR"
                },
                {
                  "name": "Iraq",
                  "code": "IQ"
                },
                {
                  "name": "Ireland",
                  "code": "IE"
                },
                {
                  "name": "Isle of Man",
                  "code": "IM"
                },
                {
                  "name": "Israel",
                  "code": "IL"
                },
                {
                  "name": "Italy",
                  "code": "IT"
                },
                {
                  "name": "Jamaica",
                  "code": "JM"
                },
                {
                  "name": "Japan",
                  "code": "JP"
                },
                {
                  "name": "Jersey",
                  "code": "JE"
                },
                {
                  "name": "Jordan",
                  "code": "JO"
                },
                {
                  "name": "Kazakhstan",
                  "code": "KZ"
                },
                {
                  "name": "Kenya",
                  "code": "KE"
                },
                {
                  "name": "Kiribati",
                  "code": "KI"
                },
                {
                  "name": "Korea (Democratic People's Republic of)",
                  "code": "KP"
                },
                {
                  "name": "Korea (Republic of)",
                  "code": "KR"
                },
                {
                  "name": "Kuwait",
                  "code": "KW"
                },
                {
                  "name": "Kyrgyzstan",
                  "code": "KG"
                },
                {
                  "name": "Lao People's Democratic Republic",
                  "code": "LA"
                },
                {
                  "name": "Latvia",
                  "code": "LV"
                },
                {
                  "name": "Lebanon",
                  "code": "LB"
                },
                {
                  "name": "Lesotho",
                  "code": "LS"
                },
                {
                  "name": "Liberia",
                  "code": "LR"
                },
                {
                  "name": "Libya",
                  "code": "LY"
                },
                {
                  "name": "Liechtenstein",
                  "code": "LI"
                },
                {
                  "name": "Lithuania",
                  "code": "LT"
                },
                {
                  "name": "Luxembourg",
                  "code": "LU"
                },
                {
                  "name": "Macao",
                  "code": "MO"
                },
                {
                  "name": "Macedonia (the former Yugoslav Republic of)",
                  "code": "MK"
                },
                {
                  "name": "Madagascar",
                  "code": "MG"
                },
                {
                  "name": "Malawi",
                  "code": "MW"
                },
                {
                  "name": "Malaysia",
                  "code": "MY"
                },
                {
                  "name": "Maldives",
                  "code": "MV"
                },
                {
                  "name": "Mali",
                  "code": "ML"
                },
                {
                  "name": "Malta",
                  "code": "MT"
                },
                {
                  "name": "Marshall Islands",
                  "code": "MH"
                },
                {
                  "name": "Martinique",
                  "code": "MQ"
                },
                {
                  "name": "Mauritania",
                  "code": "MR"
                },
                {
                  "name": "Mauritius",
                  "code": "MU"
                },
                {
                  "name": "Mayotte",
                  "code": "YT"
                },
                {
                  "name": "Mexico",
                  "code": "MX"
                },
                {
                  "name": "Micronesia (Federated States of)",
                  "code": "FM"
                },
                {
                  "name": "Moldova (Republic of)",
                  "code": "MD"
                },
                {
                  "name": "Monaco",
                  "code": "MC"
                },
                {
                  "name": "Mongolia",
                  "code": "MN"
                },
                {
                  "name": "Montenegro",
                  "code": "ME"
                },
                {
                  "name": "Montserrat",
                  "code": "MS"
                },
                {
                  "name": "Morocco",
                  "code": "MA"
                },
                {
                  "name": "Mozambique",
                  "code": "MZ"
                },
                {
                  "name": "Myanmar",
                  "code": "MM"
                },
                {
                  "name": "Namibia",
                  "code": "NA"
                },
                {
                  "name": "Nauru",
                  "code": "NR"
                },
                {
                  "name": "Nepal",
                  "code": "NP"
                },
                {
                  "name": "Netherlands",
                  "code": "NL"
                },
                {
                  "name": "New Caledonia",
                  "code": "NC"
                },
                {
                  "name": "New Zealand",
                  "code": "NZ"
                },
                {
                  "name": "Nicaragua",
                  "code": "NI"
                },
                {
                  "name": "Niger",
                  "code": "NE"
                },
                {
                  "name": "Nigeria",
                  "code": "NG"
                },
                {
                  "name": "Niue",
                  "code": "NU"
                },
                {
                  "name": "Norfolk Island",
                  "code": "NF"
                },
                {
                  "name": "Northern Mariana Islands",
                  "code": "MP"
                },
                {
                  "name": "Norway",
                  "code": "NO"
                },
                {
                  "name": "Oman",
                  "code": "OM"
                },
                {
                  "name": "Pakistan",
                  "code": "PK"
                },
                {
                  "name": "Palau",
                  "code": "PW"
                },
                {
                  "name": "Palestine, State of",
                  "code": "PS"
                },
                {
                  "name": "Panama",
                  "code": "PA"
                },
                {
                  "name": "Papua New Guinea",
                  "code": "PG"
                },
                {
                  "name": "Paraguay",
                  "code": "PY"
                },
                {
                  "name": "Peru",
                  "code": "PE"
                },
                {
                  "name": "Philippines",
                  "code": "PH"
                },
                {
                  "name": "Pitcairn",
                  "code": "PN"
                },
                {
                  "name": "Poland",
                  "code": "PL"
                },
                {
                  "name": "Portugal",
                  "code": "PT"
                },
                {
                  "name": "Puerto Rico",
                  "code": "PR"
                },
                {
                  "name": "Qatar",
                  "code": "QA"
                },
                {
                  "name": "Réunion",
                  "code": "RE"
                },
                {
                  "name": "Romania",
                  "code": "RO"
                },
                {
                  "name": "Russian Federation",
                  "code": "RU"
                },
                {
                  "name": "Rwanda",
                  "code": "RW"
                },
                {
                  "name": "Saint Barthélemy",
                  "code": "BL"
                },
                {
                  "name": "Saint Helena, Ascension and Tristan da Cunha",
                  "code": "SH"
                },
                {
                  "name": "Saint Kitts and Nevis",
                  "code": "KN"
                },
                {
                  "name": "Saint Lucia",
                  "code": "LC"
                },
                {
                  "name": "Saint Martin (French part)",
                  "code": "MF"
                },
                {
                  "name": "Saint Pierre and Miquelon",
                  "code": "PM"
                },
                {
                  "name": "Saint Vincent and the Grenadines",
                  "code": "VC"
                },
                {
                  "name": "Samoa",
                  "code": "WS"
                },
                {
                  "name": "San Marino",
                  "code": "SM"
                },
                {
                  "name": "Sao Tome and Principe",
                  "code": "ST"
                },
                {
                  "name": "Saudi Arabia",
                  "code": "SA"
                },
                {
                  "name": "Senegal",
                  "code": "SN"
                },
                {
                  "name": "Serbia",
                  "code": "RS"
                },
                {
                  "name": "Seychelles",
                  "code": "SC"
                },
                {
                  "name": "Sierra Leone",
                  "code": "SL"
                },
                {
                  "name": "Singapore",
                  "code": "SG"
                },
                {
                  "name": "Sint Maarten (Dutch part)",
                  "code": "SX"
                },
                {
                  "name": "Slovakia",
                  "code": "SK"
                },
                {
                  "name": "Slovenia",
                  "code": "SI"
                },
                {
                  "name": "Solomon Islands",
                  "code": "SB"
                },
                {
                  "name": "Somalia",
                  "code": "SO"
                },
                {
                  "name": "South Africa",
                  "code": "ZA"
                },
                {
                  "name": "South Georgia and the South Sandwich Islands",
                  "code": "GS"
                },
                {
                  "name": "South Sudan",
                  "code": "SS"
                },
                {
                  "name": "Spain",
                  "code": "ES"
                },
                {
                  "name": "Sri Lanka",
                  "code": "LK"
                },
                {
                  "name": "Sudan",
                  "code": "SD"
                },
                {
                  "name": "Suriname",
                  "code": "SR"
                },
                {
                  "name": "Svalbard and Jan Mayen",
                  "code": "SJ"
                },
                {
                  "name": "Swaziland",
                  "code": "SZ"
                },
                {
                  "name": "Sweden",
                  "code": "SE"
                },
                {
                  "name": "Switzerland",
                  "code": "CH"
                },
                {
                  "name": "Syrian Arab Republic",
                  "code": "SY"
                },
                {
                  "name": "Taiwan",
                  "code": "TW"
                },
                {
                  "name": "Tajikistan",
                  "code": "TJ"
                },
                {
                  "name": "Tanzania, United Republic of",
                  "code": "TZ"
                },
                {
                  "name": "Thailand",
                  "code": "TH"
                },
                {
                  "name": "Timor-Leste",
                  "code": "TL"
                },
                {
                  "name": "Togo",
                  "code": "TG"
                },
                {
                  "name": "Tokelau",
                  "code": "TK"
                },
                {
                  "name": "Tonga",
                  "code": "TO"
                },
                {
                  "name": "Trinidad and Tobago",
                  "code": "TT"
                },
                {
                  "name": "Tunisia",
                  "code": "TN"
                },
                {
                  "name": "Turkey",
                  "code": "TR"
                },
                {
                  "name": "Turkmenistan",
                  "code": "TM"
                },
                {
                  "name": "Turks and Caicos Islands",
                  "code": "TC"
                },
                {
                  "name": "Tuvalu",
                  "code": "TV"
                },
                {
                  "name": "Uganda",
                  "code": "UG"
                },
                {
                  "name": "Ukraine",
                  "code": "UA"
                },
                {
                  "name": "United Arab Emirates",
                  "code": "AE"
                },
                {
                  "name": "United Kingdom of Great Britain and Northern Ireland",
                  "code": "GB"
                },
                {
                  "name": "United States of America",
                  "code": "US"
                },
                {
                  "name": "United States Minor Outlying Islands",
                  "code": "UM"
                },
                {
                  "name": "Uruguay",
                  "code": "UY"
                },
                {
                  "name": "Uzbekistan",
                  "code": "UZ"
                },
                {
                  "name": "Vanuatu",
                  "code": "VU"
                },
                {
                  "name": "Venezuela (Bolivarian Republic of)",
                  "code": "VE"
                },
                {
                  "name": "Viet Nam",
                  "code": "VN"
                },
                {
                  "name": "Virgin Islands (British)",
                  "code": "VG"
                },
                {
                  "name": "Virgin Islands (U.S.)",
                  "code": "VI"
                },
                {
                  "name": "Wallis and Futuna",
                  "code": "WF"
                },
                {
                  "name": "Western Sahara",
                  "code": "EH"
                },
                {
                  "name": "Yemen",
                  "code": "YE"
                },
                {
                  "name": "Zambia",
                  "code": "ZM"
                },
                {
                  "name": "Zimbabwe",
                  "code": "ZW"
                }
              ]
            }

# Group Users


## Users [/api/v1/users]


### Create a user [POST /api/v1/users]


+ Request creates new user
**POST**&nbsp;&nbsp;`/api/v1/users`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "user": {
                "email": "user@example.com",
                "password": "password"
              }
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 204,
              "email": "user@example.com",
              "created_at": "2018-01-24T13:17:06.797Z",
              "updated_at": "2018-01-24T13:17:06.797Z",
              "role": "default"
            }

### Get a user [GET /api/v1/users/{id}]

+ Parameters
    + id: `205` (number, required)

+ Request returns a user
**GET**&nbsp;&nbsp;`/api/v1/users/205?null=`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 205,
              "email": "person4@example.com",
              "created_at": "2018-01-24T13:17:06.819Z",
              "updated_at": "2018-01-24T13:17:06.819Z",
              "role": "default"
            }
