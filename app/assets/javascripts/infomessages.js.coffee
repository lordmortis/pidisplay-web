# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $("#new_message").click( ->
    $(this).fadeOut( ->
      $("#new_message_form").find("#gallery_section_name").val("");
      $("#new_message_form").fadeIn()
    )
  )