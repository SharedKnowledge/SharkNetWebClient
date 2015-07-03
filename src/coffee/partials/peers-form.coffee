class @PeersForm extends @Partial
  initialize: (elementName) ->
    @peersForm  = $ "##{elementName}"
    @formTag    = @peersForm.find 'form'

    @bindEvents()

  bindEvents: ->
    @applicationBody.on 'submit', @formTag, (event) ->
      event.preventDefault()
