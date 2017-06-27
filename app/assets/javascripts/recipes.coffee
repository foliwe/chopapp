$(document).on "turbolinks:load", ->
  $('#recipe-img').mouseover(->
    $('#actions').fadeIn 500
    return
  ).mouseout ->
    $('#actions').fadeOut 500
    return
  return
 