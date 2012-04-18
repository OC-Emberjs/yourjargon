describe "State manager", ->
  it "can be cloned", ->
    term = YJ.store.createRecord(YJ.Term,
      {term: 'dummyTerm',
      description: 'dummyDescription'}
    )
    term2 = Ember.copy(term, false)
    expect(term2.get('term')).toBe('dummyTerm')
    expect(term2.get('description')).toBe('dummyDescription')
    expect(term).toNotBe(term2)
