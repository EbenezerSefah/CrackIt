# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready_save = ->
	$(".save-sesh").click (e) ->
	  code = $(".interview-code").val()
	  note = $(".personal-notes").val()
	  id = $(e.currentTarget).attr("data-id")
	  sesh = $(e.currentTarget).attr("data-sesh")
	  $.ajax({
	      type: "POST",
	      url: "/interview/save_interview",
	      data:JSON.stringify({code: code, note: note, sesh_id: sesh, user: id}) ,
	      success: (data, status) => 
	        alert "Session saved!"
	      ,
	      contentType: 'application/json',
	      dataType: "json"
	    }) 


$(document).ready(ready_save)
$(document).on('page:load', ready_save)