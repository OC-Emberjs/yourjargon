YJ.NavbarView = Em.View.extend(
  templateName: 'templates/navbar'
  login: ->
    YJ.stateManager.send('login')

  logout: ->
    YJ.stateManager.send('logout')

  # User wants to create a new term
  new: ->
    YJ.stateManager.send('newTerm')
)
