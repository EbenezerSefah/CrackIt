# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$(".sesh-tabs a").click (e) ->
	  e.preventDefault()
	  $(this).tab "show"


$(document).ready(ready)
$(document).on('page:load', ready)