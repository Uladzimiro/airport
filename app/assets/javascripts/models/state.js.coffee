Airport.State = DS.Model.extend
  plane: DS.belongsTo('Airport.Plane')
  name: DS.attr('string')
  created_at: DS.attr('date')
