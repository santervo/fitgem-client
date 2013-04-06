class FitgemClient.Models.Activity extends Backbone.Model
  defaults:
    name: ""
    activityId: null
    logId: null
    calories: null
    distance: null
    duration: null
    steps: null

class FitgemClient.Collections.ActivitiesCollection extends Backbone.Collection
  defaults:
    date: null

  model: FitgemClient.Models.Activity

  url: ->
    if @date?
      '/api/activities.json?date='+@date
    else
      '/api/activities.json'

  setDate: (newDate) ->
    @date = newDate

  getDate: ->
    @date