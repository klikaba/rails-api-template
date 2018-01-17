

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
              "username": "person1@example.com",
              "password": "password",
              "client_id": "b59e58972dbdb3b74fd8009673bf19fac16a87f892512642069c7204cb9e18ec",
              "client_secret": "39efdb7b4cb2c848b3ffd22119999a1c230695611eff9cad6793f968c4157a8d"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6ImI1OWU1ODk3MmRiZGIzYjc0ZmQ4MDA5NjczYmYxOWZhYzE2YTg3Zjg5MjUxMjY0MjA2OWM3MjA0Y2I5ZTE4ZWMifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTYxOTI3NDcsImp0aSI6ImU1OTU4ZDgwLTYxOTMtNGFkMC1hNGRjLTU1OTFmYzk4NjBhZiIsInVzZXIiOnsiaWQiOjEzOCwiZW1haWwiOiJwZXJzb24xQGV4YW1wbGUuY29tIn19.jsEjg7eTf3dQiMchPkBx_poCL_LymVB0bZVL2tO8p-1-NL2pd0gEB6l66gRTr2E2fLjFmAJpP4rUp-1BVA_h3A",
              "token_type": "bearer",
              "expires_in": 7200,
              "refresh_token": "91b9135d2a19bfc32b00c32097eac2372d0006d29d8921c49aab8cb497419321",
              "created_at": 1516192747
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
              "refresh_token": "a3082ea5b57d677cedb83cee710bc21c",
              "client_id": "a2694f3b6ca240bae1d4af0c0b97db070853939409784d60e5c1871b0e406ca2",
              "client_secret": "212b5a36a6e1fa2bc5ba67cdeef59ad9a64a360748c45693ad25cf1ec8ab569c"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6ImEyNjk0ZjNiNmNhMjQwYmFlMWQ0YWYwYzBiOTdkYjA3MDg1MzkzOTQwOTc4NGQ2MGU1YzE4NzFiMGU0MDZjYTIifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTYxOTI3NDcsImp0aSI6Ijk4NzFiMWRkLTgwYjMtNDk3Yy1hMjBkLTQ4ZmM0YTUzMTJjMCIsInVzZXIiOnsiaWQiOjEzOSwiZW1haWwiOiJwZXJzb24yQGV4YW1wbGUuY29tIn19.KDlo3JxLfv-Mv-MudTjMJp7ADayCTEzuA28kKtPqrriJshoJTlVvLbHbirIbdkMN913jzKtumJ7udgZFsxikbA",
              "token_type": "bearer",
              "expires_in": 7200,
              "refresh_token": "7fa0e22057e9ff52ab7bad343f5d5e70222a2db21eb79a8aaeeb1730ffa5142a",
              "created_at": 1516192747
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
              "id": 140,
              "email": "user@example.com",
              "created_at": "2018-01-17T12:39:07.630Z",
              "updated_at": "2018-01-17T12:39:07.630Z",
              "role": "default"
            }

### Get a user [GET /api/v1/users/{id}]

+ Parameters
    + id: `141` (number, required)

+ Request returns a user
**GET**&nbsp;&nbsp;`/api/v1/users/141?null=`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 141,
              "email": "person3@example.com",
              "created_at": "2018-01-17T12:39:07.640Z",
              "updated_at": "2018-01-17T12:39:07.640Z",
              "role": "default"
            }
