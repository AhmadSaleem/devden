$(document).on 'turbolinks:load', ->
  $('.send-message').click (e) ->
    e.preventDefault()

    email = $('.email-field').val()
    if(email == "")
      $('#error').removeClass 'hide'
      $('#error').text("Email Required")
      return
    else if (!validEmail(email))
      $('#error').removeClass 'hide'
      $('#error').text("Invalid email")
      return
    else
      $('#error').addClass 'hide'
      $('#user_email').val(email)
    $this = $(this)
    $('#basicModal').modal 'toggle', $this
    return

  validEmail = (email) ->
    re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    re.test email


  $('.project_type').click (e) ->
    if $(this).hasClass 'button-on-click'
      $(this).removeClass 'button-on-click'
    else
      $(this).addClass 'button-on-click'

    $('#enquiry_project_type').val(this.id)


  $('.services_type').click (e) ->
    if $(this).hasClass 'button-on-click'
      $(this).removeClass 'button-on-click'
    else
      $(this).addClass 'button-on-click'

    $('#enquiry_service_required').val(this.id)

  $('[data-dismiss=modal]').on 'click', (e) ->
    $t = $(this)
    target = $t[0].href or $t.data('target') or $t.parents('.modal') or []
    $(target).find('textarea, select').val('').end()
             .find('input[type=checkbox], input[type=radio]').prop('checked', '').end()
             .find('input[type!=submit]').val('').end()
    $('.project_type').removeClass 'button-on-click'
    $('.services_type').removeClass 'button-on-click'
    return
