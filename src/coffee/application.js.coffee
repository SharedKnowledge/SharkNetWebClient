class @Application
  constructor: ->
    @api = new API this

  build: ->
    @messages  = new Messages  this, 'messages'
    @header    = new Header    this, 'header'
    @peersForm = new PeersForm this, 'peers-form'
