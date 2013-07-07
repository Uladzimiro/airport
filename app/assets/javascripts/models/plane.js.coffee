Airport.Plane = DS.Model.extend
  serial: DS.attr('string')
  plane_type: DS.belongsTo('Airport.PlaneType')
  states: DS.hasMany('Airport.State')
