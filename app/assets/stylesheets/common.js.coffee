ready = ->
  $(document).on 'change', '#question-type', (e) ->
    selected = $(this).find('option:selected')
    el = $(this).parent().parent().find('#question-options')
    if selected.val() == 'option'
      el.removeClass("d-none");
    else
      el.addClass("d-none");

$(document).on 'ready page:load', ->

$(document).ready(ready)
$(document).on('page:load', ready)
$(window).on('page:load', ready)