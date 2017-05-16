### Basic Table Information
User
  ID
  Username
  Email
  Password
  Balance

Position
  ID
  Ticker
  Amount
  Type
  Datetime


### Description

Users can register, log in, log out, see trades, balances.
Views
Index -

Trades

### Using HTTParty
```
require 'httparty'

url = 'https://api.spotify.com/v1/search?type=artist&q=tycho'
response = HTTParty.get(url)
response.parsed_response
```
