class @Application
  constructor: ->
    @api = new API

  build: ->
    @header = new Header 'header'
