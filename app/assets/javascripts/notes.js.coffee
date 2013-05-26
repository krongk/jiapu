# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("#notes_view_toggle_list").bind 'click', (event) ->
    $("#notes_view_list").toggle()
    $("#notes_view_timeline").toggle()

  $("#notes_view_toggle_timeline").bind 'click', (event) ->
    $("#notes_view_list").toggle()
    $("#notes_view_timeline").toggle()