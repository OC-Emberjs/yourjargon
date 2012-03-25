describe "Load terms", ->
  beforeEach ->
    @ctl = YJ.termsController
    @ctl.set('content', [])
    @ctl.loadTermsForTesting()

  it "generate terms into a controller", ->
    expect(@ctl.get('content').length).toBe(3)

