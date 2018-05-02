$ ->
  'use strict'
  #/////////////////////////
  # Preloader
  $(document).on 'turbolinks:load', ->
    $('#preloader').delay(600).fadeOut()
  #/////////////////////////
  # Scrollspy
    $('body').scrollspy
      target: '#nav'
      offset: $(window).height() / 2
    #/////////////////////////
    # Smooth scroll
    $('#nav .main-nav a[href^=\'#\']').on 'click', (e) ->
      e.preventDefault()
      hash = @hash
      $('html, body').animate { scrollTop: $(@hash).offset().top }, 600
      return
    $('#back-to-top').on 'click', ->
      $('body,html').animate { scrollTop: 0 }, 600
      return
    #/////////////////////////
    # Btn nav collapse
    $('#nav .nav-collapse').on 'click', ->
      $('#nav').toggleClass 'open'
      return
    #/////////////////////////
    # Mobile dropdown
    $('.has-dropdown a').on 'click', ->
      $(this).parent().toggleClass 'open-drop'
      return
    #/////////////////////////
    # On Scroll
    $(window).on 'scroll', ->
      wScroll = $(this).scrollTop()
      # Fixed nav
      if wScroll > 1 then $('#nav').addClass('fixed-nav') else $('#nav').removeClass('fixed-nav')
      # Back To Top Appear
      if wScroll > 700 then $('#back-to-top').fadeIn() else $('#back-to-top').fadeOut()
      return
    #/////////////////////////
    # magnificPopup
    $('.work').magnificPopup
      delegate: '.lightbox'
      type: 'image'
    #/////////////////////////
    # Owl Carousel
    $('#about-slider').owlCarousel
      items: 1
      loop: true
      margin: 15
      nav: true
      navText: [
        '<i class="fa fa-angle-left"></i>'
        '<i class="fa fa-angle-right"></i>'
      ]
      dots: true
      autoplay: true
      animateOut: 'fadeOut'
    $('#testimonial-slider').owlCarousel
      loop: true
      margin: 15
      dots: true
      nav: false
      autoplay: true
      responsive:
        0: items: 1
        992: items: 2

    $('#project-image-slider').owlCarousel
      items: 1
      loop: true
      margin: 15
      nav: true
      navText: [
        '<i class="fa fa-angle-left"></i>'
        '<i class="fa fa-angle-right"></i>'
      ]
      dots: true
      autoplay: true
      animateOut: 'fadeOut'
    return
  return
