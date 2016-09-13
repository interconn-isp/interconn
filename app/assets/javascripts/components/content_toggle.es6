class ContentToggle {
  constructor(element) {
    this.element = element
    this.option1 = this._findOptionById(this.element.getAttribute('data-content-toggle-option1'))
    this.option2 = this._findOptionById(this.element.getAttribute('data-content-toggle-option2'))

    this._attachHandlers()
    this.enableOptionFromState()
    this._enableSelectedOption()
  }

  enableOptionFromState() {
    if (!window.location.hash) {
      return
    }

    let optionId = window.location.hash.substr(2)
    let option = document.getElementById(optionId)

    if (optionId == this.option1.getAttribute('data-content-toggle-id') && !$(this.element).is(':checked')) {
      $(this.element).click()
    } else if (optionId == this.option2.getAttribute('data-content-toggle-id') && $(this.element).is(':checked')) {
      $(this.element).click()
    }
  }

  _findOptionById(id) {
    return document.querySelectorAll('[data-content-toggle-id="' + id + '"]')[0]
  }

  _enableOption(option) {
    let optionToDisable;

    switch (option.getAttribute('data-content-toggle-id')) {
      case this.option1.getAttribute('data-content-toggle-id'):
        optionToDisable = this.option2
        break
      case this.option2.getAttribute('data-content-toggle-id'):
        optionToDisable = this.option1
        break
    }

    $(option).show()
    $(optionToDisable).hide()

    history.pushState({}, '', '#/' + option.getAttribute('data-content-toggle-id'))
  }

  _attachHandlers() {
    this.element.addEventListener('click', () => {
      this._enableSelectedOption()
    })

    window.addEventListener('popstate', () => {
      this.enableOptionFromState()
    })
  }

  _enableSelectedOption() {
    if ($(this.element).is(':checked')) {
      this._enableOption(this.option1)
    } else {
      this._enableOption(this.option2)
    }
  }
}

document.addEventListener('turbolinks:load', () => {
  document.querySelectorAll('[data-content-toggle]').forEach((element) => {
    new ContentToggle(element)
  })
})

