class @Messages extends @Partial
  show: (message) ->
    @clearAll()
    
    messageItem = document.createElement 'div'
    messageItem.setAttribute 'class', 'message'
    messageItem.innerHTML = message

    @contentElement().append messageItem

  clearAll: ->
    @contentElement().empty()
