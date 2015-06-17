describe 'Test Sample Provider', ->

  sampleObj = null
  $rootScope = null
  $httpBackend = null

  beforeEach module('app.providers')
  beforeEach () ->
    inject [
      'sample'
      (sample) ->
        sampleObj = sample
    ]

  beforeEach () ->
    inject (_$rootScope_, _$httpBackend_) ->
      $rootScope = _$rootScope_
      $httpBackend = _$httpBackend_

  it 'should return object from API', (done) ->

    assert.isNotNull sampleObj
    assert.isFunction sampleObj.get
    done()


  it 'should call API properly', (done) ->

    $httpBackend.when('GET', '/sample').respond({"args": {"key": "value"}})

    sampleObj.get().then (data) ->
      assert.equal data.args.key, 'value'
      done()

    $rootScope.$apply()
    $httpBackend.flush()

  

  return
