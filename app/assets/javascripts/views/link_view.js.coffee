YJ.LinkView = Em.View.extend(
    term: null

    edit: (event) ->
      event.preventDefault() # this keeps the browser from trying to refresh/reload the page
      YJ.stateManager.send('editTerm', @term)
)