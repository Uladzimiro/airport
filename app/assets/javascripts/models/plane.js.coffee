Airport.Plane = DS.Model.extend
  serial: DS.attr('string')
  plane_type: DS.belongsTo('Airport.PlaneType')
  current_state: DS.attr('string')
  states: DS.hasMany('Airport.State')
