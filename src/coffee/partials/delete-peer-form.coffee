class @DeletePeerForm extends @Partial
  initialize: (@elementName) ->
    @applicationBody.on 'submit', '.delete-peer-form form', (event) =>
      event.preventDefault()

      @application.api.peers.delete @extractedParameters(),
        @updateForm

  updateForm: (application, data) ->
    application.messages.show "Deleted peer '#{data.si}'."

  extractedParameters: ->
    si: @applicationBody.find('.delete-peer-form').find('input[name=si]').val()
