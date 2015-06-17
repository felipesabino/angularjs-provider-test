angular.module('app.providers', ['ng'])

  .provider 'sample', () ->

    console.log 'YAAAA'

    options =
      path: "/sample"

    # Example result from http://httpbin.org/get?key=value
    #
    # {
    #   "args": {
    #     "key": "value"
    #   },
    #   "headers": {
    #     "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8",
    #     "Accept-Encoding": "gzip, deflate, sdch",
    #     "Accept-Language": "en-US,en;q=0.8,es;q=0.6,pt;q=0.4,ro;q=0.2",
    #     "Cookie": "_ga=GA1.2.443424855.1432831262; _gat=1",
    #     "Host": "httpbin.org",
    #     "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36"
    #   },
    #   "origin": "66.212.64.163",
    #   "url": "http://httpbin.org/get?key=value"
    # }

    @configure = (obj) ->
      options = obj

    $get: [
      '$http'
      '$q'
      ($http, $q) ->

        get: () ->
          deferred = $q.defer()

          $http.get(options.path).success (data) ->

            debugger

            deferred.resolve(data)

          return deferred.promise

    ]
