class @ProfileRoutes extends @Routes
  getUrl: ->
    "#{@baseUrl()}/profiles"

  getUrl: (si) ->
    "#{@baseUrl()}/profile/#{si}"
