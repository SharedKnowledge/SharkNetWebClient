class @API
  constructor: (@application) ->
    @peers = new Peers @application
