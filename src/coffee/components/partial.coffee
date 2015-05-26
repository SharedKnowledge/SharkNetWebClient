class @Partial extends @PageElement
  constructor: (elementName) ->
    @render elementName, @partialUrl(elementName), @initialize(elementName)

  initialize: (elementName) ->

  partialUrl: (elementName) ->
    "html/partials/#{elementName}.html"
