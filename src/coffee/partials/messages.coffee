class @Messages extends @Partial
  show: (message) ->
    messageItem = document.createElement 'div'
    messageItem.setAttribute 'class', 'message'
    messageItem.innerHTML = message

    @contentElement().append messageItem
