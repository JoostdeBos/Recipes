Recepten.Views.Recipes ||= {}

class Recepten.Views.Recipes.EditView extends Backbone.View
  template : JST["backbone/templates/recipes/edit"]

  events :
    "submit #edit-recipe" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (recipe) =>
        @model = recipe
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
