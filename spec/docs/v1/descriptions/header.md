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
