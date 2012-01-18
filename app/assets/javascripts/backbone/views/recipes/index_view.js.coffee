Recepten.Views.Recipes ||= {}

class Recepten.Views.Recipes.IndexView extends Backbone.View
  template: JST["backbone/templates/recipes/index"]

  initialize: () ->
    @options.recipes.bind('reset', @addAll)

  addAll: () =>
    @options.recipes.each(@addOne)

  addOne: (recipe) =>
    view = new Recepten.Views.Recipes.RecipeView({model : recipe})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(recipes: @options.recipes.toJSON() ))
    @addAll()

    return this
