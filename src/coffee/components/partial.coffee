class @Partial extends @PageElement
  constructor: (@application, elementName) ->
    super
    @render elementName, @partialUrl(elementName), @initialize(elementName)

  initialize: (@elementName) ->

  contentElement: ->
    $ "##{@elementName}"

  partialUrl: (elementName) ->
    "html/partials/#{elementName}.html"
