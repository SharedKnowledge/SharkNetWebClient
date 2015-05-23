class @PageElement
  createRoot: (name) ->
    $('body').append @root(name)

  root: (name) ->
    root = document.createElement 'div'
    root.setAttribute 'id',    name
    root.setAttribute 'class', name
    root

  render: (name, template, callback) ->
    @createRoot name unless $("##{name}").length
    $("##{name}").load template

    callback()
