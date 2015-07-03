class @Peers extends @PeerRoutes
  get: ->
    $.ajax
      url: @getUrl()
      type: 'GET'

      success: (data) ->
        console.log data

  post: (data) ->
    $.ajax
      url: @postUrl()
      data: data
      type: 'POST'

      success: (data) ->
        console.log data
