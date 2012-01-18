Recepten.Views.Recipes ||= {}

class Recepten.Views.Recipes.NewView extends Backbone.View
  template: JST["backbone/templates/recipes/new"]

  events:
    "submit #new-recipe": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (recipe) =>
        @model = recipe
        window.location.hash = "/#{@model.id}"

      error: (recipe, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
