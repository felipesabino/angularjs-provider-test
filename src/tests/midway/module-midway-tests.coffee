describe 'Midway: Module', () ->
  module = null

  before () ->
    module = angular.module('app.providers')

  it 'should be registered', ->
    assert.isNotNull module

  describe 'Module Dependencies:', ->
  deps = undefined

  hasModule = (m) ->
    deps.indexOf(m) >= 0

  before ->
    deps = module.value('sample').requires

  # it 'should have no module as dependency', ->
  #   assert.equal deps.length, 0

  # Testing the module's dependencies
  it 'should have ng as a dependency', ->
    assert.isTrue hasModule('ng')

  return
