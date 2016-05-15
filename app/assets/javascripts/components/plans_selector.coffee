$(->
  togglePlans = (selector) ->
    checkedChoice = $($(selector).data('checked-choice'))
    uncheckedChoice = $($(selector).data('unchecked-choice'))

    if $(selector).is(':checked')
      checkedChoice.show()
      uncheckedChoice.hide()
    else
      checkedChoice.hide()
      uncheckedChoice.show()

  $('[data-plans-selector]')
    .each(->
      togglePlans(this)
    )
    .click(->
      togglePlans(this)
    )
)
