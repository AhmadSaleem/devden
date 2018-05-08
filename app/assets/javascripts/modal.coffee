$(document).on 'turbolinks:load', ->
  $('.send-message').click (e) ->
    e.preventDefault()

    email = $('.email-field').val()
    if(email == "")
      $('#error').removeClass 'hide'
      $('#error').text("Please enter email")
      return
    else if (!validEmail(email))
      $('#error').removeClass 'hide'
      $('#error').text("Invalid Email")
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
