Airport.PlanesController = Ember.ArrayController.extend
  addPlane: ->
    @pushObject serial: @get('serial')
    @set('serial', '')

  nextPlane: ->
    @setEach('next', false)
    pool = @rejectProperty('next')
    if pool.length > 0
      plane = pool[Math.floor(Math.random() * pool.length)]
      plane.set('next', true)
