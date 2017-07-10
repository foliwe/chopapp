jQuery(document).on 'turbolinks:load', ->
  $('[data-toggle="tooltip"]').tooltip()
  $('.scroller').slick
    dots: false
    slidesToShow: 3
    slidesToScroll: 1
    autoplay: true
    cssEase: 'ease'
    autoplaySpeed: 3000
  