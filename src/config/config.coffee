exports.development =
  
  frontEndAppUrl: "http://127.0.0.1:8888/yay-or-nay-front-end/build/index.html"
  frontEndProductsOnlyAppUrl: "http://127.0.0.1:8888/yay-or-nay-front-end/build/index-jcp.html"
  oAuthCallbackBaseUrl: "http://127.0.0.1:5000"
  baseUrl: "http://127.0.0.1:5000"
  database:
    host: "mongodb://127.0.0.1/yay-or-nay"

  facebook:
    appId: "1407324312837936"
    appSecret: "888e3147535c57a91e35dc4be042e097"

  google:
    clientId: "598188715004.apps.googleusercontent.com"
    clientSecret: "9gRNmInhiiXaT75fNPs2sEEF"

  twitter:
    consumerKey: "IyTbVvSc9M9NDD0gvQfpQ"
    consumerSecret: "bE0iSYq7reqAP865CduQxo9qhVqkzU6eamY5G0vQ0"
    accessToken: "2161203474-YJTSGUR25chSlrqPtQCra3G482DHbrj6r8EhTPp"
    accessTokenSecret: "PczsFQ19x1OeajrnVRldwJbMHDBS6YKo5EQj5P9RQzycA"

exports.production =
  frontEndAppUrl: "https://s3.amazonaws.com/jcp-innovation-yay-or-nay-front-end/index.html"
  frontEndProductsOnlyAppUrl: "https://s3.amazonaws.com/jcp-innovation-yay-or-nay-front-end/index-jcp.html"
  baseUrl: "http://yay-or-nay.herokuapp.com"
  oAuthCallbackBaseUrl: "http://yay-or-nay.herokuapp.com"
  database:
    host: "mongodb://127.0.0.1/yay-or-nay"

  facebook:
    appId: "1394451344130285"
    appSecret: "c6e6a3a31510d06e28c0f1028f75a686"

  google:
    clientId: "598188715004-p2mcj8rs7bjhbk76m6vn35qm07q64mhe.apps.googleusercontent.com"
    clientSecret: "slvQhTTUjOOQhmJ8EGLW0Bt4"

  twitter:
    consumerKey: "ECl1QRe8gnqv0VIKgkrFGw"
    consumerSecret: "OO4nB7czXdmOQTohZ7nA8QA4KNdubofN72OahkZihE"
    accessToken: "2161203474-BUBIWUx8YLAYcRB5kREtMaZq4gqNnuEatBYqIaU"
    accessTokenSecret: "9Xp6Ip3PPGTo1YJw39Eri1F23pPGa5JNhjYgrXfKH0rxe"