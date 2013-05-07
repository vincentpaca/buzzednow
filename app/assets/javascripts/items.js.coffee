ready = ->
  $(".flexslider").flexslider
    animation: "slide"
    controlNav: "thumbnails"
    start: (slider) ->
      $("body").removeClass "loading"

  $("#locationTrigger").click ->
    $("#locationModal").removeClass "hide"
    $(".modal-backdrop").removeClass "hide"

  $("#reserveTrigger").click ->
    $("#reserveModal").removeClass "hide"
    $(".modal-backdrop").removeClass "hide"

  $("#contactTrigger").click ->
    $("#contactModal").removeClass "hide"
    $(".modal-backdrop").removeClass "hide"

  $(".close,.modal-backdrop").click ->
    $(".modal").addClass "hide"
    $(".modal-backdrop").addClass "hide"

  $(".vote-list a").click ->
    $(this).toggleClass "active"

  $(".size-swatch > label").click ->
    $(".size-swatch > label").removeClass "active"
    $(this).addClass "active"
    $(".size-swatch > label.inactive").removeClass "active"

$(document).ready(ready)
$(document).on('page:load', ready)



