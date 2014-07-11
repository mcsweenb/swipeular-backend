exports.development =

  frontEndAppUrl: "http://127.0.0.1:8888/yay-or-nay-front-end/build/index.html"
  baseUrl: 'http://localhost:5000'
  oAuthCallbackBaseUrl: 'http://localhost:5000'

  database:
    host: 'mongodb://127.0.0.1/yay-or-nay'

  facebook:
    appId: 'FACEBOOK APP ID GOES HERE'
    appSecret: 'FACEBOOK APP SECRET GOES HERE'

  google:
    clientId: 'GOOGLE CLIENT ID GOES HERE'
    clientSecret: 'GOOGLE CLIENT SECRET GOES HERE'

  twitter:
    consumerKey: 'TWITTER CONSUMER KEY GOES HERE'
    consumerSecret: 'TWITTER CONSUMER SECRET GOES HERE'
    accessToken: 'TWITTER ACCESS TOKEN GOES HERE'
    accessTokenSecret: 'TWITTER ACCESS TOKEN SECRET GOES HERE'



exports.production =

  frontEndAppUrl: "https://s3.amazonaws.com/jcp-innovation-yay-or-nay-front-end/index.html"
  baseUrl: 'yay-or-nay.herokuapp.com'
  oAuthCallbackBaseUrl: 'yay-or-nay.herokuapp.com'

  database:
    host: 'mongodb://127.0.0.1/yay-or-nay'

  facebook:
    appId: 'FACEBOOK APP ID GOES HERE'
    appSecret: 'FACEBOOK APP SECRET GOES HERE'

  google:
    clientId: 'GOOGLE CLIENT ID GOES HERE'
    clientSecret: 'GOOGLE CLIENT SECRET GOES HERE'

  twitter:
    consumerKey: 'TWITTER CONSUMER KEY GOES HERE'
    consumerSecret: 'TWITTER CONSUMER SECRET GOES HERE'
    accessToken: 'TWITTER ACCESS TOKEN GOES HERE'
    accessTokenSecret: 'TWITTER ACCESS TOKEN SECRET GOES HERE'