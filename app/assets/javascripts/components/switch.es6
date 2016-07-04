class Switch {
  constructor(element) {
    this.element = element
    this.toggle = this.element.querySelectorAll('.toggle')[0]
    this.labels = this.element.querySelectorAll('.switch-label')

    this._updateLabelsStyles()
    this._attachHandlers()
  }

  _updateLabelsStyles() {
    if ($(this.toggle).is(':checked')) {
      $(this.element).addClass('checked')
    } else {
      $(this.element).removeClass('checked')
    }
  }

  _handleLabelClick(label) {
    if ($(label).is(':last-child') && !$(this.toggle).is(':checked')) {
      $(this.toggle).click()
    } else if (!$(label).is(':last-child') && $(this.toggle).is(':checked')) {
      $(this.toggle).click()
    }
  }

  _attachHandlers() {
    this.toggle.addEventListener('click', () => {
      this._updateLabelsStyles()
    })

    this.labels.forEach((element) => {
      element.addEventListener('click', (e) => {
        this._handleLabelClick(e.currentTarget)
      })
    })
  }
}

document.addEventListener('turbolinks:load', () => {
  document.querySelectorAll('.switch').forEach((element) => {
    new Switch(element)
  })
})
