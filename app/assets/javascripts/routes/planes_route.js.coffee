Airport.PlanesRoute = Ember.Route.extend
  setupController: (controller) -> controller.set('content', Airport.Plane.find())
