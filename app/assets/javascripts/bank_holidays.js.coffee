$(document).ready ->
  $(".search form").on("ajax:before", ->
    $(".results").html('<p class="text-center">loading...</p>')
    $(".full-size").removeClass('full-size')
  )
