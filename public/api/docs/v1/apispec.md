

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
              "client_id": "f7d9a9efdb361b3db90ffd2204a86853e1dac50088679114fb9bdeeb3a8cdc73",
              "client_secret": "af4dd86b01efa69870b8b2f21bbff33a2d725490e790b0621b84dc146981f3da"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6ImY3ZDlhOWVmZGIzNjFiM2RiOTBmZmQyMjA0YTg2ODUzZTFkYWM1MDA4ODY3OTExNGZiOWJkZWViM2E4Y2RjNzMifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTY3OTkyNTMsImp0aSI6IjMxNTYzYTcxLTEyOTMtNDFlYi1hOTgzLTE4MDRlYzg1NjM4MCIsInVzZXIiOnsiaWQiOjE3NCwiZW1haWwiOiJwZXJzb24yQGV4YW1wbGUuY29tIn19.ME1POQeEAoTZkjRtG4j99dnEDbkTmw_uV2Cvn6GIYljKkrMbmZ1idoq71noTu_FISDPD_2DIfC0NWakWzpCqBA",
              "token_type": "bearer",
              "expires_in": 60,
              "refresh_token": "cfe197963c8948cc72d432ff5a9bbec21e4038366efaf8972044810c8904b60c",
              "created_at": 1516799253,
              "user_id": 174
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
              "refresh_token": "9fb02ce8523d2b2d0253684cce5885a0",
              "client_id": "e818e5369eede65e77a37f0c4cdd520ffce23b2bdeab7ada1237093c171e8520",
              "client_secret": "d75d781dd140ca3a4704fbfd25859f1fcb2537ced78c8ba52d1856fb71dd780b"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6ImU4MThlNTM2OWVlZGU2NWU3N2EzN2YwYzRjZGQ1MjBmZmNlMjNiMmJkZWFiN2FkYTEyMzcwOTNjMTcxZTg1MjAifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTY3OTkyNTMsImp0aSI6ImEwZTYwNjQwLTU0ZTAtNGQ0ZS05YWM4LWU1ZDAxMzVjY2NjOCIsInVzZXIiOnsiaWQiOjE3NSwiZW1haWwiOiJwZXJzb24zQGV4YW1wbGUuY29tIn19.sDitBi1kwZNCixMwUHBu4Qt2BH6NNYAlxChgUMwfCVxOEW9e-l9mNMl7hwmQ9Fv9sKqzvas-AjJlUYZzYrKo6g",
              "token_type": "bearer",
              "expires_in": 60,
              "refresh_token": "aeccb1c4626ef8ee19e9bee4efe3435508240c5864a0c3b3b41697554a0b2d2d",
              "created_at": 1516799253,
              "user_id": 175
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
              "id": 176,
              "email": "user@example.com",
              "created_at": "2018-01-24T13:07:33.566Z",
              "updated_at": "2018-01-24T13:07:33.566Z",
              "role": "default"
            }

### Get a user [GET /api/v1/users/{id}]

+ Parameters
    + id: `177` (number, required)

+ Request returns a user
**GET**&nbsp;&nbsp;`/api/v1/users/177?null=`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 177,
              "email": "person4@example.com",
              "created_at": "2018-01-24T13:07:33.577Z",
              "updated_at": "2018-01-24T13:07:33.577Z",
              "role": "default"
            }

# Group countries


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
