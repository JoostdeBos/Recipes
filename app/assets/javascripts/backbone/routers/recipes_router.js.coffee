class Recepten.Routers.RecipesRouter extends Backbone.Router
  initialize: (options) ->
    @recipes = new Recepten.Collections.RecipesCollection()
    @recipes.reset options.recipes

  routes:
    "/new"      : "newRecipe"
    "/index"    : "index"
    "/:id/edit" : "edit"
    "/:id"      : "show"
    ".*"        : "index"

  newRecipe: ->
    @view = new Recepten.Views.Recipes.NewView(collection: @recipes)
    $("#recipes").html(@view.render().el)

  index: ->
    @view = new Recepten.Views.Recipes.IndexView(recipes: @recipes)
    $("#recipes").html(@view.render().el)

  show: (id) ->
    recipe = @recipes.get(id)

    @view = new Recepten.Views.Recipes.ShowView(model: recipe)
    $("#recipes").html(@view.render().el)

  edit: (id) ->
    recipe = @recipes.get(id)

    @view = new Recepten.Views.Recipes.EditView(model: recipe)
    $("#recipes").html(@view.render().el)
