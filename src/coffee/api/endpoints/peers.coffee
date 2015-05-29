class @Peers extends @PeerRoutes
  get: ->
    $.ajax
      url: @getUrl()
      type: 'GET'

      success: (data) ->
        console.log data
