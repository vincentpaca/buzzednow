$(window).load ->
  $("a.facebook-user-loggedin").click ->
    $(this).toggleClass "active"
    $(".fb-sub-nav").toggle()

  $(".facebook-account-wrapper").mouseleave ->
    $(".fb-sub-nav").hide()
    $("a.facebook-user-loggedin").removeClass "active"
