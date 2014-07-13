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

  frontEndAppUrl: "http://swipeular.s3-website-us-east-1.amazonaws.com/index.html"
  baseUrl: 'swipeular.herokuapp.com'
  oAuthCallbackBaseUrl: 'swipeular.herokuapp.com'

  database:
    host: 'mongodb://127.0.0.1/swipeular'

  facebook:
    appId: '617998461651559'
    appSecret: '8f338fea2e4a0e9c00d755e014f7e2be'

  google:
    clientId: 'GOOGLE CLIENT ID GOES HERE'
    clientSecret: 'GOOGLE CLIENT SECRET GOES HERE'

  twitter:
    consumerKey: 'TWITTER CONSUMER KEY GOES HERE'
    consumerSecret: 'TWITTER CONSUMER SECRET GOES HERE'
    accessToken: 'TWITTER ACCESS TOKEN GOES HERE'
    accessTokenSecret: 'TWITTER ACCESS TOKEN SECRET GOES HERE'