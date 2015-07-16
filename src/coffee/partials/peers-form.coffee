class @PeersForm extends @Partial
  initialize: (@elementName) ->
    @applicationBody.on 'submit', '.peers-form form', (event) =>
      event.preventDefault()

      @application.api.peers.post @extractedParameters(),
        @updateForm

  updateForm: (application, data) ->
    application.messages.show "Added peer '#{data.name}' with SI #{data.SI.join(', ')} and address(es) #{data.addresses.join(', ')}."

  extractedParameters: ->
    name:      @applicationBody.find('.peers-form').find('input[name=name]').     val(),
    si:        @applicationBody.find('.peers-form').find('input[name=si]').       val(),
    addresses: @applicationBody.find('.peers-form').find('input[name=addresses]').val()
