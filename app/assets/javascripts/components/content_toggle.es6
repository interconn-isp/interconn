class ContentToggle {
  constructor(element) {
    this.element = element
  }
}

document.addEventListener('turbolinks:load', () => {
  document.querySelectorAll('[data-content-toggle]').forEach((element) => {
    new ContentToggle(element)
  })
})
