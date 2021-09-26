ready = ->
  $(document).on 'change', '#question-type', (e) ->
    selected = $(this).find('option:selected')
    el = $(this).parent().parent().find('#question-options')
    textarea = $(this).parent().parent().find('#text-area-field')
    if selected.val() == 'option'
      el.removeClass("d-none");
      textarea.addClass("d-none");
    else
      el.addClass("d-none");
      textarea.removeClass("d-none");

$(document).on 'ready page:load', ->

$(document).ready(ready)
$(document).on('page:load', ready)
$(window).on('page:load', ready)