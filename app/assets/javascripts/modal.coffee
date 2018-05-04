$(document).on 'turbolinks:load', ->
  $('.send-message').click (e) ->
    e.preventDefault()

    email = $('.email-field').val()
    if(email == "")
      $('#error').removeClass 'hide'
      return
    else
      $('#error').addClass 'hide'
      $('#user_email').val(email)
    $this = $(this)
    $('#basicModal').modal 'toggle', $this
    return
