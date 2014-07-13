exports.development =
  
  frontEndAppUrl: "http://127.0.0.1:8888/yay-or-nay-front-end/build/index.html"
  frontEndProductsOnlyAppUrl: "http://127.0.0.1:8888/yay-or-nay-front-end/build/index-jcp.html"
  oAuthCallbackBaseUrl: "http://127.0.0.1:5000"
  baseUrl: "http://127.0.0.1:5000"
  database:
    host: "mongodb://127.0.0.1/yay-or-nay"

  facebook:
    appId: "617998461651559"
    appSecret: "8f338fea2e4a0e9c00d755e014f7e2be"

  google:
    clientId: "598188715004.apps.googleusercontent.com"
    clientSecret: "9gRNmInhiiXaT75fNPs2sEEF"

  twitter:
    consumerKey: "IyTbVvSc9M9NDD0gvQfpQ"
    consumerSecret: "bE0iSYq7reqAP865CduQxo9qhVqkzU6eamY5G0vQ0"
    accessToken: "2161203474-YJTSGUR25chSlrqPtQCra3G482DHbrj6r8EhTPp"
    accessTokenSecret: "PczsFQ19x1OeajrnVRldwJbMHDBS6YKo5EQj5P9RQzycA"

exports.production =
  frontEndAppUrl: "http://swipeular.s3-website-us-east-1.amazonaws.com/"
  frontEndProductsOnlyAppUrl: "https://s3.amazonaws.com/jcp-innovation-yay-or-nay-front-end/index-jcp.html"
  baseUrl: "http://swipeular.herokuapp.com"
  oAuthCallbackBaseUrl: "http://swipeular.herokuapp.com"
  database:
    host: "mongodb://127.0.0.1/swipeular"

  facebook:
    appId: "617998461651559"
    appSecret: "8f338fea2e4a0e9c00d755e014f7e2be"

  google:
    clientId: "598188715004-p2mcj8rs7bjhbk76m6vn35qm07q64mhe.apps.googleusercontent.com"
    clientSecret: "slvQhTTUjOOQhmJ8EGLW0Bt4"

  twitter:
    consumerKey: "ECl1QRe8gnqv0VIKgkrFGw"
    consumerSecret: "OO4nB7czXdmOQTohZ7nA8QA4KNdubofN72OahkZihE"
    accessToken: "2161203474-BUBIWUx8YLAYcRB5kREtMaZq4gqNnuEatBYqIaU"
    accessTokenSecret: "9Xp6Ip3PPGTo1YJw39Eri1F23pPGa5JNhjYgrXfKH0rxe"