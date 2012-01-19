Recepten.Views.Recipes ||= {}

class Recepten.Views.Recipes.ShowView extends Backbone.View
  template: JST["backbone/templates/recipes/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
