

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
              "client_id": "6cc9b4059815bb7674e860a8c3dc4c58c9db63ac89f420e888e4e653af4305ca",
              "client_secret": "fb1e8c880cee7e76827a32d1368b0a68a6bf04e5493e8a2b6c03261a2e7a8b97"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjZjYzliNDA1OTgxNWJiNzY3NGU4NjBhOGMzZGM0YzU4YzlkYjYzYWM4OWY0MjBlODg4ZTRlNjUzYWY0MzA1Y2EifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTY3ODc0MDEsImp0aSI6ImI3NDU0Y2U4LTg5ZjQtNDU2Yi04MmI2LTg2MmQ0MDZkYTFjOSIsInVzZXIiOnsiaWQiOjE1NywiZW1haWwiOiJwZXJzb24xQGV4YW1wbGUuY29tIn19.GVGduU-mIOpszF2QEPRHPNHTc6qLMBQZroXInkSY_tUURRrmkEHo9UsPz_Vj8QKkBL542cCkYDrgdlNYfD6L0g",
              "token_type": "bearer",
              "expires_in": 7200,
              "refresh_token": "e17ffca23111357ed0f3c32fd8ef2e0f737b9cb61a5eaa27768295575a693c08",
              "created_at": 1516787401,
              "user_id": 157
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
              "refresh_token": "3935f1f93f9f15567c6623bb2ffb31b2",
              "client_id": "0fee4eab40cc183cdaf825b5944d39d459756a1cb8d0def2ce44bd3b207d9737",
              "client_secret": "5b3e5b929c233fe3b27c9e0452b6d2926a449a1699e40ece739f8bc0cab1dd0d"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjBmZWU0ZWFiNDBjYzE4M2NkYWY4MjViNTk0NGQzOWQ0NTk3NTZhMWNiOGQwZGVmMmNlNDRiZDNiMjA3ZDk3MzcifQ.eyJpc3MiOiJyYWlsc19hcGlfdGVtcGxhdGUiLCJpYXQiOjE1MTY3ODc0MDEsImp0aSI6IjhhMGUxMDlkLTE2MGYtNDBlYy1iMGFkLWE0M2RlMjYyYWQ5NSIsInVzZXIiOnsiaWQiOjE1OCwiZW1haWwiOiJwZXJzb24yQGV4YW1wbGUuY29tIn19.EOtB3m05zWuC4wFjq4SFO4yJqpoY-aAwAWsRMt2sZZ6cI_MgsZOnvs1DS96T8HYcijCKReXxhWI4g1BTNiSILw",
              "token_type": "bearer",
              "expires_in": 7200,
              "refresh_token": "72149d6bbb278f9597dc372edc4497619810a27320af52dbb39e5ad380506015",
              "created_at": 1516787401,
              "user_id": 158
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
              "id": 159,
              "email": "user@example.com",
              "created_at": "2018-01-24T09:50:01.704Z",
              "updated_at": "2018-01-24T09:50:01.704Z",
              "role": "default"
            }

### Get a user [GET /api/v1/users/{id}]

+ Parameters
    + id: `160` (number, required)

+ Request returns a user
**GET**&nbsp;&nbsp;`/api/v1/users/160?null=`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "id": 160,
              "email": "person3@example.com",
              "created_at": "2018-01-24T09:50:01.712Z",
              "updated_at": "2018-01-24T09:50:01.712Z",
              "role": "default"
            }
