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
    $('.project_type').removeClass 'button-on-click'
    $(this).addClass 'button-on-click'
    project_type = this.id
    $('#enquiry_project_type').val(project_type)


  $('.services_type').click (e) ->
    $('.services_type').removeClass 'button-on-click'
    $(this).addClass 'button-on-click'
    service_type = this.id
    $('#enquiry_service_required').val(service_type)
