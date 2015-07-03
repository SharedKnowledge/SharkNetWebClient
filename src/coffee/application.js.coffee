class @Application
  constructor: ->
    @applicationBody = $ 'body'
    @api = new API

  build: ->
    @header    = new Header    'header'
    @peersForm = new PeersForm 'peers-form'
