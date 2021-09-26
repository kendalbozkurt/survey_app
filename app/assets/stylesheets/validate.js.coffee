ready = ->

  inputTextValidator = (input) ->
    if input.data('novalidate')
      return [true, null]

    val = input.val()
    length = val.replace(/\s/g, '').length

    if input.attr('required') != undefined && length == 0
      return [false, "can't be blank"]

  # Validate text inputs
  validateInputText = (input) ->
    result = inputTextValidator(input)
    input.parent().parent().find('.help-block.has-error').remove()
    if result == undefined
      input.removeClass('is-invalid')
    else
      window.isFormValid = false
      input.addClass('is-invalid')
      input.after("<span class='help-block has-error d-block'>#{result[1]}</span>")

  $(document).on 'keyup change', 'input[type="text"]', ->
    validateInputText($(this))

$(document).on 'ready page:load', ->

$(document).ready(ready)
$(document).on('page:load', ready)
$(window).on('page:load', ready)