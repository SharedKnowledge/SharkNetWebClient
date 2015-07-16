class @Peers extends @PeerRoutes
  get: ->
    $.ajax
      url: @getUrl()
      type: 'GET'

      success: (data) ->
        console.log data

  post: (data, callback) ->
    $.ajax
      application: @application
      url: @postUrl()
      data: data
      type: 'POST'

      success: (data) ->
        callback @application, data

  delete: (data, callback) ->
    $.ajax
      application: @application
      url: @deleteUrl() + "?si=#{data.si}"
      type: 'DELETE'

      success: (data) ->
        callback @application, data
