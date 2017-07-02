jQuery(document).on 'turbolinks:load', ->
  $('.scroller').slick
    dots: false
    slidesToShow: 3
    slidesToScroll: 1
    autoplay: true
    cssEase: 'ease'
    autoplaySpeed: 3000
  