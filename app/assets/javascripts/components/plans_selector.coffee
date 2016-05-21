togglePlans = (selector) ->
  checkedChoice = $('[data-plans-id="' + $(selector).data('checked-choice') + '"]')
  uncheckedChoice = $('[data-plans-id="' + $(selector).data('unchecked-choice') + '"]')

  if $(selector).is(':checked')
    selectedChoice = checkedChoice
    unselectedChoice = uncheckedChoice
  else
    selectedChoice = uncheckedChoice
    unselectedChoice = checkedChoice

  selectedChoice.show()
  unselectedChoice.hide()

  history.pushState({}, '', '#' + selectedChoice.data('plans-id'))

togglePlansThroughState = ->
  $('[data-plans-selector]')
    .each(->
      return unless window.location.hash
      plansId = window.location.hash.substr(1)

      plans = $('[data-plans-id="' + plansId  + '"]')
      return unless plans

      if $(this).data('checked-choice') == plansId && !$(this).is(':checked')
        $(this).click()
      else if $(this).data('unchecked-choice') == plansId && $(this).is(':checked')
        $(this).click()
      else
        return

      togglePlans(this)
  )

$(->
  togglePlansThroughState()

  $('[data-plans-selector]')
    .each(-> togglePlans(this))
    .click(-> togglePlans(this))
)

$(window).on('popstate', -> togglePlansThroughState())
