class @PeersForm extends @Partial
  initialize: (elementName) ->
    @applicationBody.on 'submit', '.peers-form form', (event) =>
      event.preventDefault()

      @api.peers.post @extractedParameters()

  extractedParameters: ->
    name:      @applicationBody.find('.peers-form').find('input[name=name]').     val(),
    si:        @applicationBody.find('.peers-form').find('input[name=si]').       val(),
    addresses: @applicationBody.find('.peers-form').find('input[name=addresses]').val()
