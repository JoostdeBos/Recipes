# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#recipes-index, #recipes-index .pagination a").live "click", ->
    $.getScript @href
    false

  $("#recipes_search input").keyup ->
  	$.get $("#recipes_search").attr("action"), $("#recipes_search").serialize(), null, "script"
  	false