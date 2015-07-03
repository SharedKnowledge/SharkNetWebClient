class @Application
  constructor: ->
    @api = new API

  build: ->
    @header    = new Header    'header'
    @peersForm = new PeersForm 'peers-form'
