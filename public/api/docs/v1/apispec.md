# API Reference

## Documentation

This reference helps you implement communication with the RESTful API v1. The API uses a JSON format for output. The API is stateless – all requests are validated against an API token. The API token can be obtained from flow defined in Authentication chapter.
Clients MUST send all JSON API data in request documents with the header `Content-Type: application/json` without any media type parameters.

## Authentication

In order to access the API, you need to contact API developers and provide a **YOUR_REDIRECT_URI** (must be https/ssl). It is an endpoint on your side where API will send the request with the `code` for OAuth 2.0 authorization code flow. You will be give **CLIENT_ID** and **CLIENT_SECRET** and authentication URL.


Authentication can be performed using two methods:

[OAuth 2.0](https://oauth.net/2/) protocol with [Password Grant](https://oauth.net/2/grant-types/password/) for first-party clients. Since this involves the client asking the user for their password, it should not be used by third party clients. In this flow, the user's username and password are exchanged directly for an access token. See [Authentication Token Documentation](#authentication-token-post)


[OAuth 2.0](https://oauth.net/2/) protocol with [Authorization Code Grant](https://oauth.net/2/grant-types/authorization-code/) flow is used by confidential and public clients to exchange an authorization code for an access token.

![Web Server OAuth Authentication Flow](../../../oauth-flow.png)

1. Request authorization by visiting authorization endpoint

`https://API_URI/oauth/authorize?client_id=CLIENT_ID&redirect_uri=YOUR_REDIRECT_URI&response_type=code&scope=`

2. Enter your login credentials
Once you are there you have to sign in and authorize access

3. Authorize access

4. API Redirects to **YOUR_REDIRECT_URI** with code

`https://YOUR_REDIRECT_URI/?code=18768d576dc182906bc1e030871bf79bf9da99a38c607c3ffbc60b3796b2f9d2`

5. Exchange code for access and refresh token

`POST https://API_URI/oauth/token`
```json
{
  "client_id": YOUR_CLIENT_ID,
  "client_secret": YOUR_CLIENT_SECRET,
  "code": CODE,
  "grant_type": "authorization_code",
  "redirect_uri": YOUR_REDIRECT_URI
}

**Response:**
```json
{
 "access_token": "de6780bc506a0446309bd93628...",
 "token_type": "bearer", 
 "expires_in": 7200,
 "refresh_token": "8257e65c97202ed1726cf..."
}
```

## Token lifetime

Access tokens have expiration time specified in authentication flow response. The Web server OAuth authentication flow provide a refresh token that can be used to obtain a new access token. See [Refresh token documentation](#refresh-token-post-1)

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
              "client_id": "e23c8aa3b4df1561d3cdadfef2c095ecf14fc919f85c744d8ea485cb54f5473b",
              "client_secret": "3baceb73ee3bb8b3f497ac03f9fab7990493f68db1aa709c2ec80486c696dd84"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6ImUyM2M4YWEzYjRkZjE1NjFkM2NkYWRmZWYyYzA5NWVjZjE0ZmM5MTlmODVjNzQ0ZDhlYTQ4NWNiNTRmNTQ3M2IifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1Mzc1MDc2MDAsImp0aSI6IjJmZjFkNGZjLWUwYzMtNDU2OC1hNjQ0LTU2OTRlMGFhN2E2MiIsInVzZXIiOnsiaWQiOjk4LCJlbWFpbCI6InBlcnNvbjJAZXhhbXBsZS5jb20ifX0.lYBlIKvhjuVLFOTZVAU7E97z894c7yUyTHle5ZCZ1QAac59SUWuHooht8tiJKP4xkb9mIPxnAeFk4TdUBEzzVA",
              "token_type": "Bearer",
              "expires_in": 60,
              "refresh_token": "f18f7ff422ad096099259b72c7ab629df7ace9a4d01500c94d0994a955700b48",
              "created_at": 1537507600,
              "user_id": 98
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
              "refresh_token": "218366f0d39508bff3c5f00a004766fe",
              "client_id": "6d3105e3601c79acbfe123b7785b9eddce5a4780a83a19eab239b77f3f35c3a5",
              "client_secret": "82f70e4998d4365af9ca570627717c028dc43bd18a3422df6c17260a7cac5e57"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjZkMzEwNWUzNjAxYzc5YWNiZmUxMjNiNzc4NWI5ZWRkY2U1YTQ3ODBhODNhMTllYWIyMzliNzdmM2YzNWMzYTUifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1Mzc1MDc2MDAsImp0aSI6ImJmMWIxMjU5LTg3OWEtNGZmYi1hMDBlLThmZmExZGU3NDRiYiIsInVzZXIiOnsiaWQiOjk5LCJlbWFpbCI6InBlcnNvbjNAZXhhbXBsZS5jb20ifX0.ntnmHXLR9ZD9glbBrpWQKoBIxJcW_1uGg8na5aqUSBjWdUR8tVyTZacSquBmfpJCd9DIV2vv3-OfBZcKo86ZSg",
              "token_type": "Bearer",
              "expires_in": 60,
              "refresh_token": "00a8202314efa9419882fd63e766da72cde4d347d136df4d2b8c4d7b459978fb",
              "created_at": 1537507600,
              "user_id": 99
            }

# Group Countries


## Countries [/api/v1/countries]


### Get country list [GET /api/v1/countries]


+ Request returns countries
**GET**&nbsp;&nbsp;`/api/v1/countries`

    + Headers

            Accept: application/json
            Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6ImQ2MjRlOWY0N2Q2ZmQ3MmQ3Y2JmYzBjZTQ1MzQ2OTkxYTA2OGNmMTU2MDcxMDExNTU0MjY3NGI3OTZiMWM1NDEifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1Mzc1MDc2MDAsImp0aSI6IjMwMDIxY2FiLTk2NTUtNGRmMy04OWQ3LWY0OGM0ZjNkZjg1NyIsInVzZXIiOnsiaWQiOjk3LCJlbWFpbCI6InBlcnNvbjFAZXhhbXBsZS5jb20ifX0.DmZ_Ewyrxkse3MMFLcOUGWhCaWdEstnuZl_Jhwl8Gbj86dnNrm4lJx1db6ed3oaUEfwOhTakbB1cVPvKkhZKSA
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
              "id": 100,
              "name": "",
              "nickname": "",
              "email": "user@example.com",
              "created_at": "2018-09-21T05:26:40.496Z",
              "updated_at": "2018-09-21T05:26:40.496Z",
              "role": "default",
              "gold_to_send": 50,
              "gold_received": 0
            }

### Get a user [GET /api/v1/users/{id}]

+ Parameters
    + id: `101` (number, required)

+ Request returns a user
**GET**&nbsp;&nbsp;`/api/v1/users/101`

    + Headers

            Accept: application/json
            Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjY2MWE3NzI4ZTgxOWM0NjI5ZWJkMzJlMWIzZmU5MjVmMGVhMWVjMTEzNTViOGZjMzYyODE4MTg3ZDVjNGY4MWMifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1Mzc1MDc2MDAsImp0aSI6IjA2YWY3YTAwLTAyMDQtNGRmOC1iOTY1LTkyYjMxZjg1OWEwNiIsInVzZXIiOnsiaWQiOjEwMSwiZW1haWwiOiJwZXJzb240QGV4YW1wbGUuY29tIn19.1vBclf9ZeRVayf62NNaXTC1RRr9DILjZxwAXk1jTlSZxT86VW2wDCqpgWShlSkfrG9IWQDhbQync-C6mFckJyg
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 101,
              "name": "",
              "nickname": "",
              "email": "person4@example.com",
              "created_at": "2018-09-21T05:26:40.502Z",
              "updated_at": "2018-09-21T05:26:40.502Z",
              "role": "default",
              "gold_to_send": 50,
              "gold_received": 0
            }
