$(window).load ->
  $(".top-nav > ul > li").hover ->
    $(this).toggleClass "onhover"
    $(this).find(".sub-nav").toggle()
