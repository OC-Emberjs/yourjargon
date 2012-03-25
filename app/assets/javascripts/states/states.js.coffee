
YJ.stateManager = Em.StateManager.create(

  rootElement: '#content'

  mainState: Ember.ViewState.create(
    view: YJ.MainView
    isStart: true

    newTerm: (manager) ->
      YJ.termsController.set("currentTerm", YJ.Term.create())
      manager.goToState('newTermState')

    editTerm: (manager, term) ->
      YJ.termsController.set("currentTerm", term)
      manager.goToState('editTermState')
  )

  newTermState: Ember.ViewState.create(
    view: YJ.NewTermView

    addTerm: (manager, term) ->
      YJ.termsController.add(term)
      manager.goToState('mainState')

  )

  editTermState: Ember.ViewState.create(
    view: YJ.EditTermView

    updateTerm: (manager, term) ->
      manager.goToState('mainState')

    cancelEditCurrentTerm: (manager) ->
      YJ.termsController.set('currentTerm', null)
      manager.goToState('mainState')

    deleteCurrentTerm: (manager) ->
      YJ.termsController.deleteCurrentTerm()
      manager.goToState('mainState')
  )

  start: @.mainState

)
