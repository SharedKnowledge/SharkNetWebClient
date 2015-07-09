class @PeerRoutes extends @Routes
  getUrl: ->
    "#{@baseUrl()}/peers"

  postUrl: ->
    "#{@baseUrl()}/peers"

  deleteUrl: ->
    "#{@baseUrl()}/peers"
