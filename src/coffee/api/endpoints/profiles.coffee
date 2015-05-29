class @Profiles extends @ProfileRoutes
  get: ->
    $.ajax
      url: @getUrl()
      type: 'GET'

      success: (data) ->
        console.log data
