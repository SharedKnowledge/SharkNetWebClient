class @Header extends @PageElement
  constructor: (element) ->
    @render 'header', 'html/partials/header.html', @initialize

  initialize: ->
    @header = $ '#header'
