class @Header
  constructor: (element) ->
    @header = $ element

    @render()

  render: ->
    @header.html '<div>test</div>'
