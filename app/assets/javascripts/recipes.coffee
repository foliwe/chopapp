$(document).on "turbolinks:load", ->
  $('#selectized').selectize  maxItems: 6
  $('#recipe-img').mouseover(->
    $('#actions').fadeIn 500
    return
  ).mouseout ->
    $('#actions').fadeOut 500
    return
  return
  

 