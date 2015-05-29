class @Partial extends @PageElement
  constructor: (elementName) ->
    super
    @render elementName, @partialUrl(elementName), @initialize(elementName)

  initialize: (elementName) ->

  partialUrl: (elementName) ->
    "html/partials/#{elementName}.html"
