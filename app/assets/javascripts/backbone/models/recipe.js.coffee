class Recepten.Models.Recipe extends Backbone.Model
  paramRoot: 'recipe'

  defaults:
    name: null
    instructions: null
    post_id: null
    preperation_time: null
    course: null

class Recepten.Collections.RecipesCollection extends Backbone.Collection
  model: Recepten.Models.Recipe
  url: '/recipes'
