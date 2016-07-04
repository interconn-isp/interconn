updateSwitchLabels = (toggle) ->
  switchEl = $(toggle).parents('.switch-control').parents('.switch')

  if $(toggle).is(':checked')
    switchEl.addClass('checked')
  else
    switchEl.removeClass('checked')

$(document).on('turbolinks:load', ->
  $('.toggle')
    .each(->
      updateSwitchLabels(this)
    )
    .click(->
      updateSwitchLabels(this)
    )

  $('.switch-label').click(->
    toggle = $(this).parents('.switch').find('.toggle')

    if $(this).is(':last-child')
      toggle.click() unless toggle.is(':checked')
    else
      toggle.click() if toggle.is(':checked')
  )
)
