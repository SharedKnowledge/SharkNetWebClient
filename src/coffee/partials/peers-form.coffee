class @PeersForm extends @Partial
  initialize: (@elementName) ->
    @applicationBody.on 'submit', '.peers-form form', (event) =>
      event.preventDefault()

      @application.api.peers.post @extractedParameters(),
        @updateForm

  updateForm: (application, data) ->
    $.each data, (index, object) ->
      application.messages.show "Added peer '#{object.name}' with SI #{object.SI.join(', ')} and address(es) #{object.addresses.join(', ')}."

  extractedParameters: ->
    name:      @applicationBody.find('.peers-form').find('input[name=name]').     val(),
    si:        @applicationBody.find('.peers-form').find('input[name=si]').       val(),
    addresses: @applicationBody.find('.peers-form').find('input[name=addresses]').val()
